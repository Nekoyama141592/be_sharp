import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_request.freezed.dart';
part 'receipt_request.g.dart';

@freezed
abstract class ReceiptRequest with _$ReceiptRequest {
  const ReceiptRequest._();
  const factory ReceiptRequest(
      {required Map<String, dynamic> purchaseDetails}) = _ReceiptRequest;
  factory ReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$ReceiptRequestFromJson(json);
}
