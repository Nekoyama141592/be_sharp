import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryInterface {
  FutureResult<UserCredential> signInWithApple();
  FutureResult<UserCredential> signInWithGoogle();
  FutureResult<bool> signOut();
  FutureResult<bool> reauthenticateWithCredential(AuthCredential credential);
  FutureResult<bool> deleteUser();
}
