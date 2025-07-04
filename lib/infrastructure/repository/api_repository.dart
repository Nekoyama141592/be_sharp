import 'package:be_sharp/core/util/json_util.dart';
import 'package:be_sharp/core/extension/purchase_details_extension.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase.dart';
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
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class ApiRepository {
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

  rs.FutureResult<PutObjectResponse> putObject(String base64Image, String object) async {
    try {
      const name = 'putObject';
      final request = PutObjectRequest(base64Image: base64Image, object: object);
      final result = await _call(name, request.toJson());
      final res = PutObjectResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to put object: $e');
    }
  }

  Future<String?> getObject(String object) async {
    try {
      const name = 'getObject';
      final request = GetObjectRequest(object: object);
      final result = await _call(name, request.toJson());
      final res = GetObjectResponse.fromJson(result);
      final image = res.base64Image;
      return image;
    } catch (e) {
      debugPrint('getImage: $e');
      return null;
    }
  }

  rs.FutureResult<DeleteObjectResponse> deleteObject(String object) async {
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

  rs.FutureResult<EditUserInfoResponse> editUserInfo(
      String stringNickName, String stringBio, String object) async {
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

  rs.FutureResult<VerifiedPurchase> verifyAndroidReceipt(
      PurchaseDetails purchaseDetails) async {
    try {
      const name = 'verifyAndroidReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await _call(name, request.toJson());
      final res = VerifiedPurchase.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to verify Android receipt: $e');
    }
  }

  rs.FutureResult<VerifiedPurchase> verifyIOSReceipt(
      PurchaseDetails purchaseDetails) async {
    try {
      const name = 'verifyIOSReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await _call(name, request.toJson());
      final res = VerifiedPurchase.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      return rs.Result.failure('Failed to verify iOS receipt: $e');
    }
  }

  rs.FutureResult<AddCaptionResponse> addCaption(
      String problemId, String caption) async {
    try {
      const name = 'addCaption';
      final request =
          AddCaptionRequest(problemId: problemId, stringCaption: caption);
      final result = await _call(name, request.toJson());
      final res = AddCaptionResponse.fromJson(result);
      return rs.Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return rs.Result.failure('Failed to add caption: $e');
    }
  }

  rs.FutureResult<CreateProblemResponse> createProblem(
      String question,
      String latex,
      String problemId,
      List<String> answers,
      {int timeLimitSeconds = 120,
      String subject = 'math',
      String category = 'unlimited'}) async {
    try {
      const name = 'createProblem';
      final request = CreateProblemRequest(
        question: question,
        latex: latex,
        problemId: problemId,
        answers: answers,
        timeLimitSeconds: timeLimitSeconds,
        subject: subject,
        category: category,
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
