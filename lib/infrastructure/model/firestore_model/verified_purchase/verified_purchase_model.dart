import 'package:be_sharp/core/util/purchase_util.dart';
import 'package:be_sharp/infrastructure/model/rest_api/verify_purchase/response/android_receipt_response/android_receipt_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/verify_purchase/response/ios_receipt_response/ios_receipt_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

part 'verified_purchase_model.freezed.dart';
part 'verified_purchase_model.g.dart';

@freezed
abstract class VerifiedPurchaseModel with _$VerifiedPurchaseModel {
  const VerifiedPurchaseModel._();
  const factory VerifiedPurchaseModel({
    required Map<String, dynamic> purchaseDetails,
    required Map<String, dynamic> verifiedReceipt,
    required String uid,
    required String os,
  }) = _VerifiedPurchaseModel;
  factory VerifiedPurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifiedPurchaseModelFromJson(json);
  bool _isAndroidReceipt() {
    return os == 'Android';
  }

  AndroidReceiptResponse get _androidReceipt =>
      AndroidReceiptResponse.fromJson(verifiedReceipt);
  IOSReceiptResponse get _iosReceipt =>
      IOSReceiptResponse.fromJson(verifiedReceipt);
  PurchaseDetails typedPurchaseDetails() {
    return PurchaseUtil.purchaseDetailsFromJson(purchaseDetails);
  }

  String get expiryTimeMillis {
    return _isAndroidReceipt()
        ? _androidReceipt.expiryTimeMillis
        : _iosReceipt.expires_date_ms;
  }

  bool isValid() {
    final intExpiryMills = int.tryParse(expiryTimeMillis);
    if (intExpiryMills == null) {
      return false;
    } else {
      final now = DateTime.now().millisecondsSinceEpoch;
      return now < intExpiryMills;
    }
  }
}
