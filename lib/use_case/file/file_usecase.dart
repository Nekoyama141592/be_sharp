import 'package:be_sharp/model/rest_api/get_object/request/get_object_request.dart';
import 'package:be_sharp/provider/overrides/prefs_provider.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/repository/cloud_functions_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'file_usecase.g.dart';

@riverpod
FileUseCase fileUseCase(Ref ref) => FileUseCase(
  prefs: ref.watch(prefsProvider),
  repository: ref.watch(cloudFunctionsRepositoryProvider),
);

class FileUseCase {
  FileUseCase({required this.prefs,required this.repository});
  final SharedPreferences prefs;
  final CloudFunctionsRepository repository;
  Future<String?> getS3Image(String? cacheKey, String? fileName) async {
    if (cacheKey == null || fileName == null) {
      return null;
    }
    String? image = prefs.getString(cacheKey); // キャッシュされている画像を取得.
    // キャッシュされていない場合、S3から取得.
    if (image == null) {
      final request = GetObjectRequest(object: fileName);
      image = await repository.getObject(request);
      if (image != null) {
        prefs.setString(cacheKey, image);
      }
    }
    return image;
  }
}
