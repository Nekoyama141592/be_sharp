import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/domain/repository_interface/repository_interface.dart';

abstract class AuthRepositoryInterface extends RepositoryInterface<void> {
  FutureResult<dynamic> signInWithApple();
  FutureResult<dynamic> signInWithGoogle();
  FutureResult<bool> signOut();
  FutureResult<bool> reauthenticateWithCredential(dynamic credential);
  FutureResult<bool> deleteUser();
}
