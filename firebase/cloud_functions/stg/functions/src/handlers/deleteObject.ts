import { onCall, HttpsError } from 'firebase-functions/v2/https';
import { S3 } from 'aws-sdk';
import { updateAWSConfig } from '../utils/updateAWSConfig';

interface DeleteObjectRequest {
  object: string;
}

interface DeleteObjectResponse {
  base64Image: string;
}

export const deleteObject = onCall(async (request) => {
  updateAWSConfig();
  const s3 = new S3();
  try {
    const { auth } = request;

    if (!auth) {
      throw new HttpsError('unauthenticated', 'Please authenticate.');
    }
    const { object }: DeleteObjectRequest = request.data;
    if (!object) {
      throw new HttpsError('invalid-argument', 'Missing required parameters');
    }
    if (object.split('/')[0] != auth.uid) {
      throw new HttpsError('permission-denied', 'You do not have permission to access this object.');
    }
    const bucket = `${process.env.AWS_S3_BUCKET_NAME}`
    const params = {
      Bucket: bucket,
      Key: object
    };

    const data = await s3.getObject(params).promise();
    if (!data.Body) {
      throw new HttpsError('not-found', 'File not found');
    }

    await s3.deleteObject(params).promise();

    const base64Image = data.Body.toString('base64');
    const response: DeleteObjectResponse = {
      base64Image
    };

    return response;
  } catch (error) {
    console.error('deleteObject', error);
    throw new HttpsError('internal', 'Internal Server Error');
  }
});
