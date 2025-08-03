// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    _ProductEntity(
      isMonthly: json['isMonthly'] as bool,
      packageId: json['packageId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$ProductEntityToJson(_ProductEntity instance) =>
    <String, dynamic>{
      'isMonthly': instance.isMonthly,
      'packageId': instance.packageId,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
    };
