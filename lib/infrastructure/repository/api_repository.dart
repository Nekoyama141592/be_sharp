import 'package:be_sharp/core/util/json_util.dart';
import 'package:be_sharp/core/extension/purchase_details_extension.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase_model.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/request/add_caption_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/request/create_problem_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/verify_purchase/request/receipt_request.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart' as rs;
import 'package:be_sharp/infrastructure/model/rest_api/delete_object/request/delete_object_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/delete_object/response/delete_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/get_object/request/get_object_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/get_object/response/get_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/put_object/response/put_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/edit_user_info/response/edit_user_info_response.dart';
import 'package:be_sharp/domain/repository_interface/api_repository_interface.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

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
  rs.FutureResult<PutObjectResponse> putObject({
    required String base64Image,
    required String object,
  }) async {
    try {
      const name = 'putObject';
      final request =
          PutObjectRequest(base64Image: base64Image, object: object);
      final result = await _call(name, request.toJson());
      final res = PutObjectResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to put object: $e');
    }
  }

  @override
  rs.FutureResult<GetObjectResponse> getObject({
    required String object,
  }) async {
    try {
      const name = 'getObject';
      final request = GetObjectRequest(object: object);
      final result = await _call(name, request.toJson());
      final res = GetObjectResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to get object: $e');
    }
  }

  @override
  rs.FutureResult<DeleteObjectResponse> deleteObject({
    required String object,
  }) async {
    try {
      const name = 'deleteObject';
      final request = DeleteObjectRequest(object: object);
      final result = await _call(name, request.toJson());
      final res = DeleteObjectResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to delete object: $e');
    }
  }

  @override
  rs.FutureResult<EditUserInfoResponse> editUserInfo({
    required String stringNickName,
    required String stringBio,
    required String object,
  }) async {
    try {
      const name = 'editUserInfo';
      final request = EditUserInfoRequest(
        stringNickName: stringNickName,
        stringBio: stringBio,
        object: object,
      );
      final result = await _call(name, request.toJson());
      final res = EditUserInfoResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to edit user info: $e');
    }
  }

  @override
  rs.FutureResult<Object> verifyPurchase({
    required PurchaseDetails purchaseDetails,
  }) async {
    try {
      const name = 'verifyAndroidReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await _call(name, request.toJson());
      final res = VerifiedPurchaseModel.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to verify purchase: $e');
    }
  }

  rs.FutureResult<VerifiedPurchaseModel> verifyAndroidReceipt(
      PurchaseDetails purchaseDetails) async {
    try {
      const name = 'verifyAndroidReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await _call(name, request.toJson());
      final res = VerifiedPurchaseModel.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to verify Android receipt: $e');
    }
  }

  rs.FutureResult<VerifiedPurchaseModel> verifyIOSReceipt(
      PurchaseDetails purchaseDetails) async {
    try {
      const name = 'verifyIOSReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await _call(name, request.toJson());
      final res = VerifiedPurchaseModel.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to verify iOS receipt: $e');
    }
  }

  @override
  rs.FutureResult<AddCaptionResponse> addCaption({
    required String problemId,
    required String stringCaption,
  }) async {
    try {
      const name = 'addCaption';
      final request =
          AddCaptionRequest(problemId: problemId, stringCaption: stringCaption);
      final result = await _call(name, request.toJson());
      final res = AddCaptionResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return rs.Result.failure('Failed to add caption: $e');
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
      const name = 'createProblem';
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
      return rs.Result.failure('Failed to create problem: $e');
    }
  }
}
