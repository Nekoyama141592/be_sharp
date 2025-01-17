import { Comprehend } from 'aws-sdk';
import { updateAWSConfig } from './updateAWSConfig';
import { detectDominantLanguage } from './detectDominantLanguage';
import { DetectedText } from '../interfaces/detectedText';

const mul100AndRoundingDown = (x: number) => {
    const mul100 = x * 100; // ex) 0.9988を99.88にする
    const result = Math.floor(mul100); // 数字を丸める
    return result;
}

export const detectText = async (text: string): Promise<DetectedText> => {
    updateAWSConfig();
    const comprehend = new Comprehend({apiVersion: '2017-11-27'});
    let detectedText: DetectedText = {
        languageCode: "",
        negativeScore: 0,
        positiveScore: 0,
        sentiment: "",
        value: text,
    };

    if (!text) {
        return detectedText;
    }

    try {
        const lCode = await detectDominantLanguage(text);
        if (!lCode || lCode.trim() === "") {
            return detectedText;
        }
        if (lCode) {
            const dSparams = {
                LanguageCode: lCode,
                Text: text,
            };

            const dSdata = await comprehend.detectSentiment(dSparams).promise();
            if (dSdata && dSdata.SentimentScore?.Negative && dSdata.SentimentScore?.Positive) {
                return {
                    languageCode: lCode,
                    negativeScore: mul100AndRoundingDown(dSdata.SentimentScore.Negative),
                    positiveScore: mul100AndRoundingDown(dSdata.SentimentScore.Positive),
                    sentiment: dSdata.Sentiment ?? '',
                    value: text,
                };
            }
        }

        return detectedText;
    } catch (error) {
        console.error(`detectText ${error}`);
        return detectedText;
    }
}