import 'package:be_sharp/core/credential_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthClient {
  Future<UserCredential?> signinWithApple() async {
    final credential = await CredentialCore.appleCredential();
    final result = await FirebaseAuth.instance.signInWithCredential(credential);
    return result;
  }

  Future<UserCredential?> signInWithGoogle() async {
    final credential = await CredentialCore.googleCredential();
    final result = await FirebaseAuth.instance.signInWithCredential(credential);
    return result;
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> reauthenticateWithCredential(
      User user, AuthCredential credential) async {
    await user.reauthenticateWithCredential(credential);
  }

  Future<void> deleteUser(User user) async {
    await user.delete();
  }
}
