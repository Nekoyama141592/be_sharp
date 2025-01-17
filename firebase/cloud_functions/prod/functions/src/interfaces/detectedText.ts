export interface DetectedText {
    languageCode: string;
    negativeScore: number;
    positiveScore: number;
    sentiment: string;
    value: string;
}