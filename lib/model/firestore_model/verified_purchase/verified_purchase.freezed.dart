// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_purchase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifiedPurchase _$VerifiedPurchaseFromJson(Map<String, dynamic> json) {
  return _VerifiedPurchase.fromJson(json);
}

/// @nodoc
mixin _$VerifiedPurchase {
  Map<String, dynamic> get purchaseDetails =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get verifiedReceipt =>
      throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get os => throw _privateConstructorUsedError;

  /// Serializes this VerifiedPurchase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifiedPurchase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifiedPurchaseCopyWith<VerifiedPurchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedPurchaseCopyWith<$Res> {
  factory $VerifiedPurchaseCopyWith(
          VerifiedPurchase value, $Res Function(VerifiedPurchase) then) =
      _$VerifiedPurchaseCopyWithImpl<$Res, VerifiedPurchase>;
  @useResult
  $Res call(
      {Map<String, dynamic> purchaseDetails,
      Map<String, dynamic> verifiedReceipt,
      String uid,
      String os});
}

/// @nodoc
class _$VerifiedPurchaseCopyWithImpl<$Res, $Val extends VerifiedPurchase>
    implements $VerifiedPurchaseCopyWith<$Res> {
  _$VerifiedPurchaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifiedPurchase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = null,
    Object? verifiedReceipt = null,
    Object? uid = null,
    Object? os = null,
  }) {
    return _then(_value.copyWith(
      purchaseDetails: null == purchaseDetails
          ? _value.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verifiedReceipt: null == verifiedReceipt
          ? _value.verifiedReceipt
          : verifiedReceipt // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifiedPurchaseImplCopyWith<$Res>
    implements $VerifiedPurchaseCopyWith<$Res> {
  factory _$$VerifiedPurchaseImplCopyWith(_$VerifiedPurchaseImpl value,
          $Res Function(_$VerifiedPurchaseImpl) then) =
      __$$VerifiedPurchaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> purchaseDetails,
      Map<String, dynamic> verifiedReceipt,
      String uid,
      String os});
}

/// @nodoc
class __$$VerifiedPurchaseImplCopyWithImpl<$Res>
    extends _$VerifiedPurchaseCopyWithImpl<$Res, _$VerifiedPurchaseImpl>
    implements _$$VerifiedPurchaseImplCopyWith<$Res> {
  __$$VerifiedPurchaseImplCopyWithImpl(_$VerifiedPurchaseImpl _value,
      $Res Function(_$VerifiedPurchaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifiedPurchase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = null,
    Object? verifiedReceipt = null,
    Object? uid = null,
    Object? os = null,
  }) {
    return _then(_$VerifiedPurchaseImpl(
      purchaseDetails: null == purchaseDetails
          ? _value._purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verifiedReceipt: null == verifiedReceipt
          ? _value._verifiedReceipt
          : verifiedReceipt // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifiedPurchaseImpl extends _VerifiedPurchase {
  const _$VerifiedPurchaseImpl(
      {required final Map<String, dynamic> purchaseDetails,
      required final Map<String, dynamic> verifiedReceipt,
      required this.uid,
      required this.os})
      : _purchaseDetails = purchaseDetails,
        _verifiedReceipt = verifiedReceipt,
        super._();

  factory _$VerifiedPurchaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiedPurchaseImplFromJson(json);

  final Map<String, dynamic> _purchaseDetails;
  @override
  Map<String, dynamic> get purchaseDetails {
    if (_purchaseDetails is EqualUnmodifiableMapView) return _purchaseDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_purchaseDetails);
  }

  final Map<String, dynamic> _verifiedReceipt;
  @override
  Map<String, dynamic> get verifiedReceipt {
    if (_verifiedReceipt is EqualUnmodifiableMapView) return _verifiedReceipt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_verifiedReceipt);
  }

  @override
  final String uid;
  @override
  final String os;

  @override
  String toString() {
    return 'VerifiedPurchase(purchaseDetails: $purchaseDetails, verifiedReceipt: $verifiedReceipt, uid: $uid, os: $os)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedPurchaseImpl &&
            const DeepCollectionEquality()
                .equals(other._purchaseDetails, _purchaseDetails) &&
            const DeepCollectionEquality()
                .equals(other._verifiedReceipt, _verifiedReceipt) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.os, os) || other.os == os));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_purchaseDetails),
      const DeepCollectionEquality().hash(_verifiedReceipt),
      uid,
      os);

  /// Create a copy of VerifiedPurchase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiedPurchaseImplCopyWith<_$VerifiedPurchaseImpl> get copyWith =>
      __$$VerifiedPurchaseImplCopyWithImpl<_$VerifiedPurchaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiedPurchaseImplToJson(
      this,
    );
  }
}

abstract class _VerifiedPurchase extends VerifiedPurchase {
  const factory _VerifiedPurchase(
      {required final Map<String, dynamic> purchaseDetails,
      required final Map<String, dynamic> verifiedReceipt,
      required final String uid,
      required final String os}) = _$VerifiedPurchaseImpl;
  const _VerifiedPurchase._() : super._();

  factory _VerifiedPurchase.fromJson(Map<String, dynamic> json) =
      _$VerifiedPurchaseImpl.fromJson;

  @override
  Map<String, dynamic> get purchaseDetails;
  @override
  Map<String, dynamic> get verifiedReceipt;
  @override
  String get uid;
  @override
  String get os;

  /// Create a copy of VerifiedPurchase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiedPurchaseImplCopyWith<_$VerifiedPurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
