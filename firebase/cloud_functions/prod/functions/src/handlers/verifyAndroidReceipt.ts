import * as admin from 'firebase-admin';
import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { google } from 'googleapis';

import { getPrivateKey } from '../utils/getPrivateKey';

export const verifyAndroidReceipt = onCall(async (request) => {
  const ANDROID_PKG_NAME = `${process.env.ANDROID_PKG_NAME}`;
  const { purchaseDetails } : ReceiptRequest = request.data;
  const productId = purchaseDetails.productID;

  if (!request.auth) {
    throw new HttpsError('unauthenticated', 'Authentication information is not available in the request context');
  }

  const uid: string = request.auth.token.uid;
  const privateKey = getPrivateKey(`${process.env.GCP_PRIVATE_KEY}`);
  const email = `${process.env.GCP_CLIENT_EMAIL}`
  if (!email) {
    throw new HttpsError('invalid-argument', 'GCP client email is missing in configuration');
  }

  const authClient = new google.auth.JWT({
    email,
    key: privateKey,
    scopes: ["https://www.googleapis.com/auth/androidpublisher"],
  });
  const playDeveloperApiClient = google.androidpublisher({
    version: "v3",
    auth: authClient,
  });
  const receipt = purchaseDetails.verificationData.localVerificationData;
  const decodedReceipt = JSON.parse(receipt);
  const purchaseToken = decodedReceipt.purchaseToken;
  const typeOfSubscription = decodedReceipt.autoRenewing;
    if (typeOfSubscription) {
        // サブスクアイテム
        let response;
        try {
            response = await playDeveloperApiClient.purchases.subscriptions.get({
                packageName: ANDROID_PKG_NAME,
                subscriptionId: productId,
                token: purchaseToken,
            });
        } catch(error) {
          throw new HttpsError('permission-denied', 'Invalid receipt');
        }

        const latestReceipt = response.data;
        if (!latestReceipt || response.status !== 200) {
          throw new HttpsError('internal', 'Failed to verify receipt');
        }
        // 期限内であることを確認する
        const now = Date.now();
        const expireDate = Number(latestReceipt["expiryTimeMillis"]);
        if (now < expireDate) {
            const transactionID = latestReceipt.orderId;
            if (!transactionID) {
              throw new HttpsError('internal', 'Failed to verify receipt');
            }
            const result : ReceiptResponse = {
              purchaseDetails,
              verifiedReceipt: latestReceipt,
              uid,
              os: 'Android'
            }
            await admin.firestore().collection(`privateUsers/${uid}/verifiedPurchases`).doc(transactionID).set(result);
            return result
        } else {
          throw new HttpsError('permission-denied', 'This receipt is expired.');
        }
    } else {
      throw new HttpsError('permission-denied', 'This receipt is expired.');
    }
});