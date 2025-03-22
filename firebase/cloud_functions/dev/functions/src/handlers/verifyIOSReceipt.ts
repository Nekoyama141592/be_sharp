import * as admin from 'firebase-admin';
import { onCall, HttpsError } from 'firebase-functions/v2/https';
import type { AxiosResponse } from 'axios';
import axios from 'axios';

export const verifyIOSReceipt = onCall(async (request) => {
    try {
        const { auth } = request;

    if (!auth) {
      throw new HttpsError('unauthenticated', 'Please authenticate.');
    }
    const { uid } = auth;
    const { purchaseDetails } : ReceiptRequest = request.data;
    if (!purchaseDetails) {
      throw new HttpsError('invalid-argument', 'Missing required parameters');
    }
    const verificationData = purchaseDetails.verificationData.serverVerificationData;

    if (!verificationData) {
        throw new HttpsError('invalid-argument', 'Missing verification data');
    }
    const RECEIPT_VERIFICATION_PASSWORD_FOR_IOS = `${process.env.APP_SHARED_SECRET}`;
    const IOS_PKG_NAME = `${process.env.IOS_PKG_NAME}`;
    const RECEIPT_VERIFICATION_ENDPOINT_SANDBOX = "https://sandbox.itunes.apple.com/verifyReceipt";
    const RECEIPT_VERIFICATION_ENDPOINT_FOR_IOS_PROD = "https://buy.itunes.apple.com/verifyReceipt";
    let response: AxiosResponse;
    try {
        response = await axios.post(RECEIPT_VERIFICATION_ENDPOINT_FOR_IOS_PROD, {
        "receipt-data": verificationData,
        "password": RECEIPT_VERIFICATION_PASSWORD_FOR_IOS,
        "exclude-old-transactions": true,
        });
        if (response.data && response.data.status === 21007) {
        response = await axios.post(RECEIPT_VERIFICATION_ENDPOINT_SANDBOX, {
            "receipt-data": verificationData,
            "password": RECEIPT_VERIFICATION_PASSWORD_FOR_IOS,
            "exclude-old-transactions": true,
        });
        }
    } catch (err) {
        throw new HttpsError('internal', 'Failed to verify receipt');
    }
    const result = response.data;

    if (result.status !== 0) {
        throw new HttpsError('permission-denied', 'Invalid receipt');
    }

    if (!result.receipt || result.receipt.bundle_id !== IOS_PKG_NAME) {
        throw new HttpsError('permission-denied', 'Invalid bundle ID');
    }
    const latestReceipt = result.latest_receipt_info[0];
    if (!latestReceipt) {
        throw new HttpsError('internal', 'Latest receipt is undefined.');
    }
    // 期限内であることを確認する
    const now = Date.now();
    const expireDate = Number(latestReceipt.expires_date_ms);
    if (now < expireDate) {
        const transactionID = latestReceipt.transaction_id;
        const result : ReceiptResponse = {
            purchaseDetails,
            verifiedReceipt: latestReceipt,
            uid,
            os: 'iOS'
        }
        const batch = admin.firestore().batch();
        batch.set(admin.firestore().collection(`privateUsers/${uid}/verifiedPurchases`).doc(transactionID), result);
        batch.set(admin.firestore().collection('rootVerifiedPurchased').doc(transactionID), result);
        await batch.commit();
        return result;
    } else {
        throw new HttpsError('permission-denied', 'This receipt is expired.');
    }
    } catch(e) {
        console.error('verifyIOSReceipt', e);
        throw new HttpsError('internal', 'Internal Server Error');
    }
});
