import 'package:be_sharp/core/json_core.dart';
import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
import 'package:be_sharp/model/rest_api/addCaption/request/add_caption_request.dart';
import 'package:be_sharp/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/model/rest_api/create_problem/request/create_problem_request.dart';
import 'package:be_sharp/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/model/rest_api/verify_purchase/request/receipt_request.dart';
import 'package:be_sharp/repository/result.dart';
import 'package:be_sharp/model/rest_api/delete_object/request/delete_object_request.dart';
import 'package:be_sharp/model/rest_api/delete_object/response/delete_object_response.dart';
import 'package:be_sharp/model/rest_api/get_object/request/get_object_request.dart';
import 'package:be_sharp/model/rest_api/get_object/response/get_object_response.dart';
import 'package:be_sharp/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/model/rest_api/put_object/response/put_object_response.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/response/edit_user_info_response.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class CloudFunctionsRepository {
  CloudFunctionsRepository(this.instance);
  final FirebaseFunctions instance;
  Future<Map<String, dynamic>> call(
      String name, Map<String, dynamic> request) async {
    final callable = instance.httpsCallable(
        name,
        options: HttpsCallableOptions(
          timeout: const Duration(seconds: 300),
        ),
      );
    final result = await callable.call(request);
    final data = result.data;
    final decoded = JsonCore.encodeDecode(data);
    return decoded;
  }
  FutureResult<PutObjectResponse> putObject(PutObjectRequest request) async {
    try {
      const name = 'putObject';
      final result = await call(name, request.toJson());
      final res = PutObjectResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  Future<String?> getObject(GetObjectRequest request) async {
    try {
      const name = 'getObject';
      final result = await call(name, request.toJson());
      final res = GetObjectResponse.fromJson(result);
      final image =  res.base64Image;
      return image;
    } catch (e) {
      debugPrint('getImage: $e');
      return null;
    }
  }

  FutureResult<DeleteObjectResponse> deleteObject(
      DeleteObjectRequest request) async {
    try {
      const name = 'deleteObject';
      final result = await call(name, request.toJson());
      final res = DeleteObjectResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<EditUserInfoResponse> editUserInfo(
      EditUserInfoRequest request) async {
    try {
      const name = 'editUserInfo';
      final result = await call(name, request.toJson());
      final res = EditUserInfoResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<VerifiedPurchase> verifyAndroidReceipt(
      PurchaseDetails purchaseDetails) async {
    try {
      const name = 'verifyAndroidReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await call(name, request.toJson());
      final res = VerifiedPurchase.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<VerifiedPurchase> verifyIOSReceipt(
      PurchaseDetails purchaseDetails) async {
    try {
      const name = 'verifyIOSReceipt';
      final request = ReceiptRequest(purchaseDetails: purchaseDetails.toJson());
      final result = await call(name, request.toJson());
      final res = VerifiedPurchase.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<AddCaptionResponse> addCaption(
      String problemId, String caption) async {
    try {
      const name = 'addCaption';
      final request =
          AddCaptionRequest(problemId: problemId, stringCaption: caption);
      final result = await call(name, request.toJson());
      final res = AddCaptionResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
  }

  FutureResult<CreateProblemResponse> createProblem(
      CreateProblemRequest request) async {
    try {
      const name = 'createProblem';
      final result = await call(name, request.toJson());
      final res = CreateProblemResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
  }
}
