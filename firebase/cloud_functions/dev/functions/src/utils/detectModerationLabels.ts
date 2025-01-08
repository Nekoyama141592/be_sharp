import { Rekognition } from 'aws-sdk';
import { updateAWSConfig } from './updateAWSConfig';
import { ModeratedImage } from '../interfaces/moderatedImage';



export const detectModerationLabels = async (object: string): Promise<ModeratedImage> => {
    updateAWSConfig();
    const rekognition = new Rekognition();
    const bucketName = `${process.env.AWS_S3_BUCKET_NAME}`
    let moderatedImage: ModeratedImage = {
        bucketName: bucketName,
        moderationLabels: <Rekognition.ModerationLabels>[],
        moderationModelVersion: '',
        value: object,
    };

    try {
        const params = {
            Image: {
                S3Object: {
                    Bucket: bucketName,
                    Name: object,
                },
            },
            MinConfidence: 60,
        };

        const moderationLabelsResponse = await rekognition.detectModerationLabels(params).promise();
        const labels = moderationLabelsResponse.ModerationLabels || [];
        const version = moderationLabelsResponse.ModerationModelVersion || '';
        if (labels && version) {
            moderatedImage = {
                bucketName: bucketName,
                moderationLabels: labels,
                moderationModelVersion: version,
                value: object,
            };
        }
        return moderatedImage;
    } catch (error) {
        console.error(`detectModerationLabels ${error}`)
        return moderatedImage;
    }
}