// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifiedPurchaseModel {
  Map<String, dynamic> get purchaseDetails;
  Map<String, dynamic> get verifiedReceipt;
  String get uid;
  String get os;

  /// Create a copy of VerifiedPurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifiedPurchaseModelCopyWith<VerifiedPurchaseModel> get copyWith =>
      _$VerifiedPurchaseModelCopyWithImpl<VerifiedPurchaseModel>(
          this as VerifiedPurchaseModel, _$identity);

  /// Serializes this VerifiedPurchaseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifiedPurchaseModel &&
            const DeepCollectionEquality()
                .equals(other.purchaseDetails, purchaseDetails) &&
            const DeepCollectionEquality()
                .equals(other.verifiedReceipt, verifiedReceipt) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.os, os) || other.os == os));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(purchaseDetails),
      const DeepCollectionEquality().hash(verifiedReceipt),
      uid,
      os);

  @override
  String toString() {
    return 'VerifiedPurchaseModel(purchaseDetails: $purchaseDetails, verifiedReceipt: $verifiedReceipt, uid: $uid, os: $os)';
  }
}

/// @nodoc
abstract mixin class $VerifiedPurchaseModelCopyWith<$Res> {
  factory $VerifiedPurchaseModelCopyWith(VerifiedPurchaseModel value,
          $Res Function(VerifiedPurchaseModel) _then) =
      _$VerifiedPurchaseModelCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic> purchaseDetails,
      Map<String, dynamic> verifiedReceipt,
      String uid,
      String os});
}

/// @nodoc
class _$VerifiedPurchaseModelCopyWithImpl<$Res>
    implements $VerifiedPurchaseModelCopyWith<$Res> {
  _$VerifiedPurchaseModelCopyWithImpl(this._self, this._then);

  final VerifiedPurchaseModel _self;
  final $Res Function(VerifiedPurchaseModel) _then;

  /// Create a copy of VerifiedPurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = null,
    Object? verifiedReceipt = null,
    Object? uid = null,
    Object? os = null,
  }) {
    return _then(_self.copyWith(
      purchaseDetails: null == purchaseDetails
          ? _self.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verifiedReceipt: null == verifiedReceipt
          ? _self.verifiedReceipt
          : verifiedReceipt // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _self.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifiedPurchaseModel].
extension VerifiedPurchaseModelPatterns on VerifiedPurchaseModel {
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
    TResult Function(_VerifiedPurchaseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseModel() when $default != null:
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
    TResult Function(_VerifiedPurchaseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseModel():
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
    TResult? Function(_VerifiedPurchaseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseModel() when $default != null:
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
    TResult Function(Map<String, dynamic> purchaseDetails,
            Map<String, dynamic> verifiedReceipt, String uid, String os)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseModel() when $default != null:
        return $default(
            _that.purchaseDetails, _that.verifiedReceipt, _that.uid, _that.os);
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
    TResult Function(Map<String, dynamic> purchaseDetails,
            Map<String, dynamic> verifiedReceipt, String uid, String os)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseModel():
        return $default(
            _that.purchaseDetails, _that.verifiedReceipt, _that.uid, _that.os);
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
    TResult? Function(Map<String, dynamic> purchaseDetails,
            Map<String, dynamic> verifiedReceipt, String uid, String os)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifiedPurchaseModel() when $default != null:
        return $default(
            _that.purchaseDetails, _that.verifiedReceipt, _that.uid, _that.os);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifiedPurchaseModel extends VerifiedPurchaseModel {
  const _VerifiedPurchaseModel(
      {required final Map<String, dynamic> purchaseDetails,
      required final Map<String, dynamic> verifiedReceipt,
      required this.uid,
      required this.os})
      : _purchaseDetails = purchaseDetails,
        _verifiedReceipt = verifiedReceipt,
        super._();
  factory _VerifiedPurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifiedPurchaseModelFromJson(json);

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

  /// Create a copy of VerifiedPurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifiedPurchaseModelCopyWith<_VerifiedPurchaseModel> get copyWith =>
      __$VerifiedPurchaseModelCopyWithImpl<_VerifiedPurchaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifiedPurchaseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifiedPurchaseModel &&
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

  @override
  String toString() {
    return 'VerifiedPurchaseModel(purchaseDetails: $purchaseDetails, verifiedReceipt: $verifiedReceipt, uid: $uid, os: $os)';
  }
}

/// @nodoc
abstract mixin class _$VerifiedPurchaseModelCopyWith<$Res>
    implements $VerifiedPurchaseModelCopyWith<$Res> {
  factory _$VerifiedPurchaseModelCopyWith(_VerifiedPurchaseModel value,
          $Res Function(_VerifiedPurchaseModel) _then) =
      __$VerifiedPurchaseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> purchaseDetails,
      Map<String, dynamic> verifiedReceipt,
      String uid,
      String os});
}

/// @nodoc
class __$VerifiedPurchaseModelCopyWithImpl<$Res>
    implements _$VerifiedPurchaseModelCopyWith<$Res> {
  __$VerifiedPurchaseModelCopyWithImpl(this._self, this._then);

  final _VerifiedPurchaseModel _self;
  final $Res Function(_VerifiedPurchaseModel) _then;

  /// Create a copy of VerifiedPurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? purchaseDetails = null,
    Object? verifiedReceipt = null,
    Object? uid = null,
    Object? os = null,
  }) {
    return _then(_VerifiedPurchaseModel(
      purchaseDetails: null == purchaseDetails
          ? _self._purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verifiedReceipt: null == verifiedReceipt
          ? _self._verifiedReceipt
          : verifiedReceipt // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      os: null == os
          ? _self.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
