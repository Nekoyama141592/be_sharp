import 'package:be_sharp/infrastructure/repository/api_repository.dart';
import 'package:be_sharp/domain/use_case_interface/file_use_case_interface.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileUseCase implements FileUseCaseInterface {
  FileUseCase({required this.prefs, required this.repository});
  final SharedPreferences prefs;
  final ApiRepository repository;
  @override
  FutureResult<String> getS3Image(String cacheKey, String imageValue) async {
    try {
      String? image = prefs.getString(cacheKey);
      if (image == null) {
        final result = await repository.getObject(object: imageValue);
        return result.when(
          success: (response) {
            final img = response.base64Image;
            if (img.isNotEmpty) {
              prefs.setString(cacheKey, img);
              return Result.success(img);
            }
            return const Result.failure('No image data received');
          },
          failure: (error) => Result.failure('Failed to get object: $error'),
        );
      }
      return Result.success(image);
    } catch (e) {
      return Result.failure('Failed to get S3 image: $e');
    }
  }

  @override
  FutureResult<void> deleteS3Image(String cacheKey) async {
    try {
      await prefs.remove(cacheKey);
      return const Result.success(null);
    } catch (e) {
      return Result.failure('Failed to delete cached image: $e');
    }
  }

  @override
  FutureResult<String> putS3Image(String cacheKey, String filePath) async {
    try {
      // This would need to be implemented based on your S3 upload logic
      return const Result.failure('Put S3 image not implemented');
    } catch (e) {
      return Result.failure('Failed to put S3 image: $e');
    }
  }
}
