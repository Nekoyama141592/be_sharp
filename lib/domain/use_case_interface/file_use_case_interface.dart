import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/domain/use_case_interface/use_case_interface.dart';

abstract class FileUseCaseInterface extends UseCaseInterface<void> {
  FutureResult<String> getS3Image(String cacheKey, String imageValue);
  FutureResult<void> deleteS3Image(String cacheKey);
  FutureResult<String> putS3Image(String cacheKey, String filePath);
}
