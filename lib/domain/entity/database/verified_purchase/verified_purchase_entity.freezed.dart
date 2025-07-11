// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_purchase_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifiedPurchaseEntity {
  String get productId;
  DateTime get expiryTime;

  /// Create a copy of VerifiedPurchaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifiedPurchaseEntityCopyWith<VerifiedPurchaseEntity> get copyWith =>
      _$VerifiedPurchaseEntityCopyWithImpl<VerifiedPurchaseEntity>(
          this as VerifiedPurchaseEntity, _$identity);

  /// Serializes this VerifiedPurchaseEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifiedPurchaseEntity &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, expiryTime);

  @override
  String toString() {
    return 'VerifiedPurchaseEntity(productId: $productId, expiryTime: $expiryTime)';
  }
}

/// @nodoc
abstract mixin class $VerifiedPurchaseEntityCopyWith<$Res> {
  factory $VerifiedPurchaseEntityCopyWith(VerifiedPurchaseEntity value,
          $Res Function(VerifiedPurchaseEntity) _then) =
      _$VerifiedPurchaseEntityCopyWithImpl;
  @useResult
  $Res call({String productId, DateTime expiryTime});
}

/// @nodoc
class _$VerifiedPurchaseEntityCopyWithImpl<$Res>
    implements $VerifiedPurchaseEntityCopyWith<$Res> {
  _$VerifiedPurchaseEntityCopyWithImpl(this._self, this._then);

  final VerifiedPurchaseEntity _self;
  final $Res Function(VerifiedPurchaseEntity) _then;

  /// Create a copy of VerifiedPurchaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? expiryTime = null,
  }) {
    return _then(_self.copyWith(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      expiryTime: null == expiryTime
          ? _self.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifiedPurchaseEntity].
extension VerifiedPurchaseEntityPatterns on VerifiedPurchaseEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VerifiedPurchaseEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VerifiedPurchaseEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VerifiedPurchaseEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String productId, DateTime expiryTime)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseEntity() when $default != null:
        return $default(_that.productId, _that.expiryTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String productId, DateTime expiryTime) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseEntity():
        return $default(_that.productId, _that.expiryTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String productId, DateTime expiryTime)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseEntity() when $default != null:
        return $default(_that.productId, _that.expiryTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifiedPurchaseEntity extends VerifiedPurchaseEntity {
  const _VerifiedPurchaseEntity(
      {required this.productId, required this.expiryTime})
      : super._();
  factory _VerifiedPurchaseEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifiedPurchaseEntityFromJson(json);

  @override
  final String productId;
  @override
  final DateTime expiryTime;

  /// Create a copy of VerifiedPurchaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifiedPurchaseEntityCopyWith<_VerifiedPurchaseEntity> get copyWith =>
      __$VerifiedPurchaseEntityCopyWithImpl<_VerifiedPurchaseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifiedPurchaseEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifiedPurchaseEntity &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, expiryTime);

  @override
  String toString() {
    return 'VerifiedPurchaseEntity(productId: $productId, expiryTime: $expiryTime)';
  }
}

/// @nodoc
abstract mixin class _$VerifiedPurchaseEntityCopyWith<$Res>
    implements $VerifiedPurchaseEntityCopyWith<$Res> {
  factory _$VerifiedPurchaseEntityCopyWith(_VerifiedPurchaseEntity value,
          $Res Function(_VerifiedPurchaseEntity) _then) =
      __$VerifiedPurchaseEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String productId, DateTime expiryTime});
}

/// @nodoc
class __$VerifiedPurchaseEntityCopyWithImpl<$Res>
    implements _$VerifiedPurchaseEntityCopyWith<$Res> {
  __$VerifiedPurchaseEntityCopyWithImpl(this._self, this._then);

  final _VerifiedPurchaseEntity _self;
  final $Res Function(_VerifiedPurchaseEntity) _then;

  /// Create a copy of VerifiedPurchaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
    Object? expiryTime = null,
  }) {
    return _then(_VerifiedPurchaseEntity(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      expiryTime: null == expiryTime
          ? _self.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
