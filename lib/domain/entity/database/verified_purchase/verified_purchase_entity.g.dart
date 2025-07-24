// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_purchase_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifiedPurchaseEntity _$VerifiedPurchaseEntityFromJson(
        Map<String, dynamic> json) =>
    _VerifiedPurchaseEntity(
      productId: json['productId'] as String,
      expiryTime: DateTime.parse(json['expiryTime'] as String),
    );

Map<String, dynamic> _$VerifiedPurchaseEntityToJson(
        _VerifiedPurchaseEntity instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'expiryTime': instance.expiryTime.toIso8601String(),
    };
