import * as admin from 'firebase-admin';
import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { DetectedText } from '../interfaces/detectedText';
import { detectText } from '../utils/detectText';
import { Timestamp } from 'firebase-admin/firestore';

interface AddCaptionRequest {
  problemId: string,
  stringCaption: string
}

interface AddCaptionResponse {
    problemId: string,
    caption: DetectedText;
}

export const addCaption = onCall(async (request) => {
  try {
    const { auth } = request;

    if (!auth) {
      throw new HttpsError('unauthenticated', 'Please authenticate.');
    }
    const { problemId,stringCaption }:  AddCaptionRequest = request.data;
    if (!problemId || !stringCaption) {
      throw new HttpsError('invalid-argument', 'Missing required parameters');
    }
    const caption = await detectText(stringCaption)
    const updatedAt = Timestamp.now();
    const response: AddCaptionResponse = {
        problemId,
        caption
    };
    const { uid } = auth;
    const data = {
        caption,
        updatedAt
    }
    await admin.firestore().collection(`users/${uid}/userAnswers`).doc(problemId).update(data)
    return response;
  } catch (error) {
    console.error('addCaption', error);
    throw new HttpsError('internal', 'Internal Server Error');
  }
});
