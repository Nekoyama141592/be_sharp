// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiptRequest _$ReceiptRequestFromJson(Map<String, dynamic> json) {
  return _ReceiptRequest.fromJson(json);
}

/// @nodoc
mixin _$ReceiptRequest {
  Map<String, dynamic> get purchaseDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this ReceiptRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptRequestCopyWith<ReceiptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptRequestCopyWith<$Res> {
  factory $ReceiptRequestCopyWith(
          ReceiptRequest value, $Res Function(ReceiptRequest) then) =
      _$ReceiptRequestCopyWithImpl<$Res, ReceiptRequest>;
  @useResult
  $Res call({Map<String, dynamic> purchaseDetails});
}

/// @nodoc
class _$ReceiptRequestCopyWithImpl<$Res, $Val extends ReceiptRequest>
    implements $ReceiptRequestCopyWith<$Res> {
  _$ReceiptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = null,
  }) {
    return _then(_value.copyWith(
      purchaseDetails: null == purchaseDetails
          ? _value.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptRequestImplCopyWith<$Res>
    implements $ReceiptRequestCopyWith<$Res> {
  factory _$$ReceiptRequestImplCopyWith(_$ReceiptRequestImpl value,
          $Res Function(_$ReceiptRequestImpl) then) =
      __$$ReceiptRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> purchaseDetails});
}

/// @nodoc
class __$$ReceiptRequestImplCopyWithImpl<$Res>
    extends _$ReceiptRequestCopyWithImpl<$Res, _$ReceiptRequestImpl>
    implements _$$ReceiptRequestImplCopyWith<$Res> {
  __$$ReceiptRequestImplCopyWithImpl(
      _$ReceiptRequestImpl _value, $Res Function(_$ReceiptRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = null,
  }) {
    return _then(_$ReceiptRequestImpl(
      purchaseDetails: null == purchaseDetails
          ? _value._purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptRequestImpl extends _ReceiptRequest {
  const _$ReceiptRequestImpl(
      {required final Map<String, dynamic> purchaseDetails})
      : _purchaseDetails = purchaseDetails,
        super._();

  factory _$ReceiptRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptRequestImplFromJson(json);

  final Map<String, dynamic> _purchaseDetails;
  @override
  Map<String, dynamic> get purchaseDetails {
    if (_purchaseDetails is EqualUnmodifiableMapView) return _purchaseDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_purchaseDetails);
  }

  @override
  String toString() {
    return 'ReceiptRequest(purchaseDetails: $purchaseDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._purchaseDetails, _purchaseDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_purchaseDetails));

  /// Create a copy of ReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptRequestImplCopyWith<_$ReceiptRequestImpl> get copyWith =>
      __$$ReceiptRequestImplCopyWithImpl<_$ReceiptRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptRequestImplToJson(
      this,
    );
  }
}

abstract class _ReceiptRequest extends ReceiptRequest {
  const factory _ReceiptRequest(
          {required final Map<String, dynamic> purchaseDetails}) =
      _$ReceiptRequestImpl;
  const _ReceiptRequest._() : super._();

  factory _ReceiptRequest.fromJson(Map<String, dynamic> json) =
      _$ReceiptRequestImpl.fromJson;

  @override
  Map<String, dynamic> get purchaseDetails;

  /// Create a copy of ReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptRequestImplCopyWith<_$ReceiptRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
