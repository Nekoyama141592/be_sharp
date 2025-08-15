import 'package:be_sharp/core/util/json_util.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/request/add_caption_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/request/create_problem_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/update_user/request/update_user_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/update_user/response/update_user_response.dart';
import 'package:be_sharp/domain/repository_interface/api_repository_interface.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart' as rs;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';

class ApiRepository implements ApiRepositoryInterface {
  ApiRepository(this._instance);
  final FirebaseFunctions _instance;

  Future<Map<String, dynamic>> _call(
      String name, Map<String, dynamic> request) async {
    final callable = _instance.httpsCallable(
      name,
      options: HttpsCallableOptions(
        timeout: const Duration(seconds: 300),
      ),
    );
    final result = await callable.call(request);
    final data = result.data;
    final decoded = JsonUtil.encodeDecode(data);
    return decoded;
  }

  @override
  rs.FutureResult<AddCaptionResponse> addCaption({
    required String problemId,
    required String stringCaption,
  }) async {
    try {
      // index.ts で export されている addCaptionV2 を呼び出す
      const name = 'addCaptionV2';
      final request =
          AddCaptionRequest(problemId: problemId, stringCaption: stringCaption);
      final result = await _call(name, request.toJson());
      final res = AddCaptionResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return const rs.Result.failure('Failed to add caption');
    }
  }

  @override
  rs.FutureResult<CreateProblemResponse> createProblem({
    required String question,
    required String latex,
    required String problemId,
    required List<String> answers,
    required int timeLimitSeconds,
  }) async {
    try {
      // index.ts で export されている createProblemV2 を呼び出す
      const name = 'createProblemV2';
      final request = CreateProblemRequest(
        question: question,
        latex: latex,
        problemId: problemId,
        answers: answers,
        timeLimitSeconds: timeLimitSeconds,
      );
      final result = await _call(name, request.toJson());
      final res = CreateProblemResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return const rs.Result.failure('Failed to create problem');
    }
  }

  @override
  rs.FutureResult<UpdateUserResponse> updateUser({
    String? base64Image,
    required String bio,
    required String userName,
  }) async {
    try {
      // index.ts で export されている updateUserV2 を呼び出す
      const name = 'updateUserV2';
      final request = UpdateUserRequest(
        base64Image: base64Image,
        bio: bio,
        userName: userName,
      );
      final result = await _call(name, request.toJson());
      final res = UpdateUserResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return const rs.Result.failure('Failed to update user');
    }
  }
}
