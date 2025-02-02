import 'package:be_sharp/core/purchases_core.dart';
import 'package:be_sharp/model/rest_api/verify_purchase/response/android_receipt_response/android_receipt_response.dart';
import 'package:be_sharp/model/rest_api/verify_purchase/response/ios_receipt_response/ios_receipt_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

part 'verified_purchase.freezed.dart';
part 'verified_purchase.g.dart';

@freezed
abstract class VerifiedPurchase implements _$VerifiedPurchase {
  const VerifiedPurchase._();
  const factory VerifiedPurchase({
    required Map<String, dynamic> purchaseDetails,
    required Map<String, dynamic> verifiedReceipt,
    required String uid,
    required String os,
  }) = _VerifiedPurchase;
  factory VerifiedPurchase.fromJson(Map<String, dynamic> json) =>
      _$VerifiedPurchaseFromJson(json);
  bool _isAndroidReceipt() {
    return os == 'Android';
  }

  AndroidReceiptResponse get _androidReceipt =>
      AndroidReceiptResponse.fromJson(verifiedReceipt);
  IOSReceiptResponse get _iosReceipt =>
      IOSReceiptResponse.fromJson(verifiedReceipt);
  PurchaseDetails typedPurchaseDetails() {
    final data = _isAndroidReceipt()
        ? _androidReceipt.purchaseDetails
        : _iosReceipt.purchase_details;
    return PurchasesCore.purchaseDetailsFromJson(data);
  }
  String get _expiryTimeMillis {
    return _isAndroidReceipt()
        ? _androidReceipt.expiryTimeMillis
        : _iosReceipt.expires_date_ms;
  }
  bool isValid() {
    final intExpiryMills = int.tryParse(_expiryTimeMillis);
    if (intExpiryMills == null) {
      return false;
    } else {
      final now = DateTime.now().millisecondsSinceEpoch;
      return now < intExpiryMills;
    }
  }
}
