import * as admin from 'firebase-admin';
import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { DetectedText } from '../interfaces/detectedText';
import { detectText } from '../utils/detectText';
import { detectModerationLabels } from '../utils/detectModerationLabels';
import { ModeratedImage } from '../interfaces/moderatedImage';
import { Timestamp } from 'firebase-admin/firestore';

interface EditUserRequest {
  stringNickName: string;
  stringBio: string;
  object: string;
}

interface EditUserResponse {
  nickName: DetectedText;
  bio: DetectedText;
  image: ModeratedImage;
}

export const editUserInfo = onCall(async (request) => {
  try {
    const { auth } = request;

    if (!auth) {
      throw new HttpsError('unauthenticated', 'Please authenticate.');
    }
    const { stringNickName,stringBio,object }: EditUserRequest = request.data;
    if (!stringNickName || !stringBio || !object) {
      throw new HttpsError('invalid-argument', 'Missing required parameters');
    }
    if (object.split('/')[0] != auth.uid) {
      throw new HttpsError('permission-denied', 'You do not have permission to access this object.');
    }
    const [nickName, bio, image] = await Promise.all([
      detectText(stringNickName),
      detectText(stringBio),
      detectModerationLabels(object)
    ]);
    if (nickName.negativeScore > 95 || bio.negativeScore > 95 || image.moderationLabels.length !== 0) {
      throw new HttpsError('permission-denied', 'You do not have permission to update user info');
    }
    const updatedAt = Timestamp.now();
    const response: EditUserResponse = {
      nickName,
      bio,
      image,
    };
    const { uid } = auth;
    const data = {
      registeredInfo: {...response},
      updatedAt
    }
    await admin.firestore().collection('users').doc(uid).update(data)
    return response;
  } catch (error) {
    console.error('editUserInfo', error);
    throw new HttpsError('internal', 'Internal Server Error');
  }
});
