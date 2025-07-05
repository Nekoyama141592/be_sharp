import 'package:be_sharp/infrastructure/repository/api_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileUseCase {
  FileUseCase({required this.prefs, required this.repository});
  final SharedPreferences prefs;
  final ApiRepository repository;
  Future<String?> getS3Image(String? cacheKey, String? fileName) async {
    if (cacheKey == null || fileName == null) {
      return null;
    }
    String? image = prefs.getString(cacheKey); // キャッシュされている画像を取得.
    // キャッシュされていない場合、S3から取得.
    if (image == null) {
      image = await repository.getObject(fileName);
      if (image != null) {
        prefs.setString(cacheKey, image);
      }
    }
    return image;
  }
}
