import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_purchase_entity.freezed.dart';
part 'verified_purchase_entity.g.dart';

@freezed
abstract class VerifiedPurchaseEntity with _$VerifiedPurchaseEntity {
  const VerifiedPurchaseEntity._();
  const factory VerifiedPurchaseEntity({
    required String productId,
    required DateTime expiryTime
  }) = _VerifiedPurchaseEntity;
  factory VerifiedPurchaseEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifiedPurchaseEntityFromJson(json);
  
  factory VerifiedPurchaseEntity.fromModel(VerifiedPurchaseModel model) {
    final intExpiryMills = int.tryParse(model.expiryTimeMillis);
    final expiryTime = intExpiryMills != null 
        ? DateTime.fromMillisecondsSinceEpoch(intExpiryMills)
        : DateTime.now();
    
    return VerifiedPurchaseEntity(
      productId: model.typedPurchaseDetails().productID,
      expiryTime: expiryTime,
    );
  }
}
