import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/domain/repository_interface/repository_interface.dart';

abstract class ApiRepositoryInterface extends RepositoryInterface<void> {
  FutureResult<dynamic> createProblem(dynamic request);
  FutureResult<dynamic> putObject(dynamic request);
  FutureResult<dynamic> getObject(dynamic request);
  FutureResult<dynamic> deleteObject(dynamic request);
  FutureResult<dynamic> addCaption(dynamic request);
  FutureResult<dynamic> editUserInfo(dynamic request);
  FutureResult<dynamic> verifyPurchase(dynamic request);
}
