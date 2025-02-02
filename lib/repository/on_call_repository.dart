import 'dart:convert';
import 'dart:typed_data';

import 'package:be_sharp/extensions/purchase_details_extension.dart';
import 'package:be_sharp/infrastructure/on_call_client.dart';
import 'package:be_sharp/model/firestore_model/verified_purchase/verified_purchase.dart';
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
import 'package:in_app_purchase/in_app_purchase.dart';

class OnCallRepository {
  OnCallClient get _client => OnCallClient();

  FutureResult<PutObjectResponse> putObject(PutObjectRequest request) async {
    try {
      const name = 'putObject';
      final result = await _client.call(name, request.toJson());
      final res = PutObjectResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<Uint8List> getObject(GetObjectRequest request) async {
    try {
      const name = 'getObject';
      final result = await _client.call(name, request.toJson());
      final res = GetObjectResponse.fromJson(result);
      final base64Image = res.base64Image;
      final image = base64Decode(base64Image);
      return Result.success(image);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<DeleteObjectResponse> deleteObject(
      DeleteObjectRequest request) async {
    try {
      const name = 'deleteObject';
      final result = await _client.call(name, request.toJson());
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
      final result = await _client.call(name, request.toJson());
      final res = EditUserInfoResponse.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<VerifiedPurchase> verifyAndroidReceipt(
      PurchaseDetails purchaseDetails, String os) async {
    try {
      const name = 'verifyAndroidReceipt';
      final request =
          ReceiptRequest(purchaseDetails: purchaseDetails.toJson(), os: os);
      final result = await _client.call(name, request.toJson());
      final res = VerifiedPurchase.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<VerifiedPurchase> verifyIOSReceipt(
      PurchaseDetails purchaseDetails, String os) async {
    try {
      const name = 'verifyIOSReceipt';
      final request =
          ReceiptRequest(purchaseDetails: purchaseDetails.toJson(), os: os);
      final result = await _client.call(name, request.toJson());
      final res = VerifiedPurchase.fromJson(result);
      return Result.success(res);
    } catch (e) {
      return const Result.failure();
    }
  }
}
