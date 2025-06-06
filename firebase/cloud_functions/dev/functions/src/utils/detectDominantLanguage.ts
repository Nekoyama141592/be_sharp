import { Comprehend } from 'aws-sdk';
import { updateAWSConfig } from './updateAWSConfig';
export const detectDominantLanguage = async (text: string) => {
    updateAWSConfig();
    const comprehend = new Comprehend({apiVersion: '2017-11-27'});
    let lCode = '';
    
    const dDparams = {
        Text: text
    };

    try {
        const dDdata = await comprehend.detectDominantLanguage(dDparams).promise();
        if (dDdata && dDdata.Languages && dDdata.Languages.length > 0) {
            lCode = dDdata.Languages[0].LanguageCode || '';
        }
        return lCode;
    } catch (error) {
        console.error(`detectDominantLanguage ${error}`);
        return lCode;
    }
}