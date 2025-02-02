// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptRequestImpl _$$ReceiptRequestImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptRequestImpl(
      purchaseDetails: json['purchaseDetails'] as Map<String, dynamic>,
      os: json['os'] as String,
    );

Map<String, dynamic> _$$ReceiptRequestImplToJson(
        _$ReceiptRequestImpl instance) =>
    <String, dynamic>{
      'purchaseDetails': instance.purchaseDetails,
      'os': instance.os,
    };
