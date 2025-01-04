import 'package:be_sharp/core/json_core.dart';
import 'package:cloud_functions/cloud_functions.dart';
class OnCallClient {
  HttpsCallable _httpsCallable(String functionName) =>
      FirebaseFunctions.instance.httpsCallable(
        functionName,
        options: HttpsCallableOptions(
          timeout: const Duration(seconds: 300),
        ),
      );
  Future<Map<String, dynamic>> call(
      String name, Map<String, dynamic> request) async {
    final callable = _httpsCallable(name);
    final result = await callable.call(request);
    final data = result.data;
    final decoded = JsonCore.encodeDecode(data);
    return decoded;
  }
}
