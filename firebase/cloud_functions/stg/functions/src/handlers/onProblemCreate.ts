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
        for (const doc of privateUsersQshot.docs) {
            const user = doc.data() as PrivateUser;
            if (user) {
                const token = user.fcmToken;
                if (!token) return;
                const payload = {
                    notification: {
                      title: 'BeSharp.',
                      body: `${timeLimitSeconds}秒で問題を解こう!`
                    },
                  };
                  await admin.messaging().send({
                    token,
                    ...payload,
                  });
            }
            
        }
    }
);