// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifiedPurchaseModel _$VerifiedPurchaseModelFromJson(
        Map<String, dynamic> json) =>
    _VerifiedPurchaseModel(
      purchaseDetails: json['purchaseDetails'] as Map<String, dynamic>,
      verifiedReceipt: json['verifiedReceipt'] as Map<String, dynamic>,
      uid: json['uid'] as String,
      os: json['os'] as String,
    );

Map<String, dynamic> _$VerifiedPurchaseModelToJson(
        _VerifiedPurchaseModel instance) =>
    <String, dynamic>{
      'purchaseDetails': instance.purchaseDetails,
      'verifiedReceipt': instance.verifiedReceipt,
      'uid': instance.uid,
      'os': instance.os,
    };
