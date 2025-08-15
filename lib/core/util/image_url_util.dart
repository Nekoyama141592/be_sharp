import 'package:flutter_dotenv/flutter_dotenv.dart';

class ImageUrlUtil {
  static String _getR2Endpoint() => dotenv.get('WORKERS_ENDPOINT');

  static String getUserImageUrl({required String uid, required String key}) {
    final baseUrl = '${_getR2Endpoint()}/users/$uid/${key.split('/').last}';
    return baseUrl;
  }
}
