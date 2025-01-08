import * as admin from 'firebase-admin';
admin.initializeApp();

export { deleteObject } from './handlers/deleteObject';
export { putObject } from './handlers/putObject';
export { getObject } from './handlers/getObject';
export { editUserInfo } from './handlers/editUserInfo';