import 'package:be_sharp/infrastructure/repository/result/result.dart';

abstract class FileUseCaseInterface {
  FutureResult<String> getS3Image(String cacheKey, String imageValue);
  FutureResult<void> deleteS3Image(String cacheKey);
  FutureResult<String> putS3Image(String cacheKey, String filePath);
}
