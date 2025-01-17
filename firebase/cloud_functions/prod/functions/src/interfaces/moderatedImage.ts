import { Rekognition } from "aws-sdk";

export interface ModeratedImage {
    bucketName: string;
    moderationLabels: Rekognition.ModerationLabels;
    moderationModelVersion: string;
    value: string;
}