import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
import 'package:be_sharp/model/rest_api/get_object/request/get_object_request.dart';
import 'dart:typed_data';

extension PrefsExtension on SharedPreferences {
  Uint8List? _getCachedUint8List(String cacheKey) {
    final base64String = getString(cacheKey);
    return base64String == null ? null : base64Decode(base64String);
  }

  Future<Uint8List?> getS3Image(String? cacheKey, String? fileName) async {
    if (cacheKey == null || fileName == null) {
      return null;
    }
    Uint8List? uint8List = _getCachedUint8List(cacheKey); // キャッシュされている画像を取得.
    // キャッシュされていない場合、S3から取得.
    if (uint8List == null) {
      final repository = OnCallRepository();
      final request = GetObjectRequest(object: fileName);
      final result = await repository.getObject(request);
      result.when(success: (res) {
        uint8List = res;
        _cacheUint8List(cacheKey, res); // 画像を非同期でキャッシュする.
      }, failure: () {
        uint8List = null;
      });
    }
    return uint8List;
  }

  Future<void> _cacheUint8List(String fileName, Uint8List data) async {
    final base64String = base64Encode(data);
    await setString(fileName, base64String);
  }
}
