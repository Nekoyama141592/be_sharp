// AWS
import * as AWS from 'aws-sdk';

export const updateAWSConfig = () => {
    AWS.config.update({
        accessKeyId: `${process.env.AWS_ACCESS_KEY}`,
        secretAccessKey: `${process.env.AWS_SECRET_ACCESS_KEY}`,
        region: `${process.env.AWS_REGION}`
    });
}