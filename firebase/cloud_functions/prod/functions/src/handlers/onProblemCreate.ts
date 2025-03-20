// 基本的な設定
import * as admin from 'firebase-admin';
import { onDocumentCreated } from 'firebase-functions/v2/firestore';
const db = admin.firestore();
interface PrivateUser {
    fcmToken: string
}
interface Problem {
    timeLimitSeconds: number
}
// firestore
const path = `problems/{postId}`;
export const onProblemCreate = onDocumentCreated(
    path,
    async (event) => {
        const doc = event.data;
        const newValue = doc?.data() as Problem;
        const { timeLimitSeconds } = newValue;
        const privateUsersQshot = await db.collection('privateUsers').get();
        
        // Promiseの配列を作成して、すべてのメッセージ送信を並列で実行
        const sendPromises = privateUsersQshot.docs.map(async (doc) => {
            const user = doc.data() as PrivateUser;
            if (!user || !user.fcmToken) return null;
            
            const payload = {
                notification: {
                    title: 'BeSharp.',
                    body: `${timeLimitSeconds}秒で問題を解こう!`
                },
            };
            
            return admin.messaging().send({
                token: user.fcmToken,
                ...payload,
            });
        });

        // すべてのPromiseが解決するのを待つ
        await Promise.all(sendPromises);
    }
);