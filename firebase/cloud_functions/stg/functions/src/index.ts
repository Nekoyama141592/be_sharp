import * as admin from 'firebase-admin';
admin.initializeApp();

export { addCaption } from './handlers/addCaption';
export { createProblem } from './handlers/createProblem';
export { deleteObject } from './handlers/deleteObject';
export { putObject } from './handlers/putObject';
export { getObject } from './handlers/getObject';
export { editUserInfo } from './handlers/editUserInfo';
export { onProblemCreate } from './handlers/onProblemCreate';
export { verifyIOSReceipt } from './handlers/verifyIOSReceipt';