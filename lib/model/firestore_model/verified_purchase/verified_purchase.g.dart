// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiedPurchaseImpl _$$VerifiedPurchaseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiedPurchaseImpl(
      purchaseDetails: json['purchaseDetails'] as Map<String, dynamic>,
      verifiedReceipt: json['verifiedReceipt'] as Map<String, dynamic>,
      uid: json['uid'] as String,
      os: json['os'] as String,
    );

Map<String, dynamic> _$$VerifiedPurchaseImplToJson(
        _$VerifiedPurchaseImpl instance) =>
    <String, dynamic>{
      'purchaseDetails': instance.purchaseDetails,
      'verifiedReceipt': instance.verifiedReceipt,
      'uid': instance.uid,
      'os': instance.os,
    };
