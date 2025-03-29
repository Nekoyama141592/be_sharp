import * as admin from 'firebase-admin';
import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { sleep } from '../utils/sleep';

interface CreateProblemRequest {
  question: string,
  latex: string,
  problemId: string,
  timeLimitSeconds: number,
  answers: string[],
  subject: string,
  category: string
}

interface CreateProblemResponse {
    status: number
}

export const createProblem = onCall(async (request) => {
  try {
    const { auth } = request;

    if (!auth) {
      throw new HttpsError('unauthenticated', 'Please authenticate.');
    }
    const { uid } = auth
    if (uid !== process.env.ADMIN_UID) {
      throw new HttpsError('permission-denied', 'You do not have permission to create problem.');
    }
    const { question, latex, problemId, timeLimitSeconds, answers, subject, category }: CreateProblemRequest = request.data;
    if (!question || !latex || !problemId || typeof timeLimitSeconds !== 'number' || !Array.isArray(answers) || !subject || !category) {
      throw new HttpsError('invalid-argument', 'Missing required parameters');
    }
    const timeout = 500
    if (timeLimitSeconds > timeout) {
      throw new HttpsError('invalid-argument', 'timeLimitSeconds must be smaller than timeout');
    }
    const now = admin.firestore.FieldValue.serverTimestamp()
    const data = { createdAt: now, updatedAt: now,question,latex, problemId, timeLimitSeconds, subject, category ,answers: [], likeCount: 0, commentCount: 0 }
    const docRef = admin.firestore().collection('problems').doc(problemId)
    await docRef.set(data)
    await sleep(timeLimitSeconds * 1000)
    const updatedAt = admin.firestore.FieldValue.serverTimestamp()
    await docRef.update({ answers,updatedAt })
    const status = 200
    const response: CreateProblemResponse = { status }
    return response;
  } catch (error) {
    console.error('addCaption', error);
    await admin.firestore().collection('errors').add({ e: `${error}`})
    throw new HttpsError('internal', 'Internal Server Error');
  }
});
