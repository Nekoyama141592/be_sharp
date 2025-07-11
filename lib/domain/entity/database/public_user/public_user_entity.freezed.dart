// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicUserEntity {
  RegisteredInfo? get registeredInfo;
  String get uid;
  @TimestampConverter()
  DateTime? get updatedAt;

  /// Create a copy of PublicUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PublicUserEntityCopyWith<PublicUserEntity> get copyWith =>
      _$PublicUserEntityCopyWithImpl<PublicUserEntity>(
          this as PublicUserEntity, _$identity);

  /// Serializes this PublicUserEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PublicUserEntity &&
            (identical(other.registeredInfo, registeredInfo) ||
                other.registeredInfo == registeredInfo) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registeredInfo, uid, updatedAt);

  @override
  String toString() {
    return 'PublicUserEntity(registeredInfo: $registeredInfo, uid: $uid, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $PublicUserEntityCopyWith<$Res> {
  factory $PublicUserEntityCopyWith(
          PublicUserEntity value, $Res Function(PublicUserEntity) _then) =
      _$PublicUserEntityCopyWithImpl;
  @useResult
  $Res call(
      {RegisteredInfo? registeredInfo,
      String uid,
      @TimestampConverter() DateTime? updatedAt});

  $RegisteredInfoCopyWith<$Res>? get registeredInfo;
}

/// @nodoc
class _$PublicUserEntityCopyWithImpl<$Res>
    implements $PublicUserEntityCopyWith<$Res> {
  _$PublicUserEntityCopyWithImpl(this._self, this._then);

  final PublicUserEntity _self;
  final $Res Function(PublicUserEntity) _then;

  /// Create a copy of PublicUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredInfo = freezed,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      registeredInfo: freezed == registeredInfo
          ? _self.registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as RegisteredInfo?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of PublicUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisteredInfoCopyWith<$Res>? get registeredInfo {
    if (_self.registeredInfo == null) {
      return null;
    }

    return $RegisteredInfoCopyWith<$Res>(_self.registeredInfo!, (value) {
      return _then(_self.copyWith(registeredInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PublicUserEntity].
extension PublicUserEntityPatterns on PublicUserEntity {
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
    TResult Function(_PublicUserEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PublicUserEntity() when $default != null:
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
    TResult Function(_PublicUserEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PublicUserEntity():
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
    TResult? Function(_PublicUserEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PublicUserEntity() when $default != null:
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
    TResult Function(RegisteredInfo? registeredInfo, String uid,
            @TimestampConverter() DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PublicUserEntity() when $default != null:
        return $default(_that.registeredInfo, _that.uid, _that.updatedAt);
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
    TResult Function(RegisteredInfo? registeredInfo, String uid,
            @TimestampConverter() DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PublicUserEntity():
        return $default(_that.registeredInfo, _that.uid, _that.updatedAt);
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
    TResult? Function(RegisteredInfo? registeredInfo, String uid,
            @TimestampConverter() DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PublicUserEntity() when $default != null:
        return $default(_that.registeredInfo, _that.uid, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PublicUserEntity extends PublicUserEntity {
  const _PublicUserEntity(
      {required this.registeredInfo,
      required this.uid,
      @TimestampConverter() required this.updatedAt})
      : super._();
  factory _PublicUserEntity.fromJson(Map<String, dynamic> json) =>
      _$PublicUserEntityFromJson(json);

  @override
  final RegisteredInfo? registeredInfo;
  @override
  final String uid;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  /// Create a copy of PublicUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PublicUserEntityCopyWith<_PublicUserEntity> get copyWith =>
      __$PublicUserEntityCopyWithImpl<_PublicUserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PublicUserEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PublicUserEntity &&
            (identical(other.registeredInfo, registeredInfo) ||
                other.registeredInfo == registeredInfo) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registeredInfo, uid, updatedAt);

  @override
  String toString() {
    return 'PublicUserEntity(registeredInfo: $registeredInfo, uid: $uid, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$PublicUserEntityCopyWith<$Res>
    implements $PublicUserEntityCopyWith<$Res> {
  factory _$PublicUserEntityCopyWith(
          _PublicUserEntity value, $Res Function(_PublicUserEntity) _then) =
      __$PublicUserEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RegisteredInfo? registeredInfo,
      String uid,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $RegisteredInfoCopyWith<$Res>? get registeredInfo;
}

/// @nodoc
class __$PublicUserEntityCopyWithImpl<$Res>
    implements _$PublicUserEntityCopyWith<$Res> {
  __$PublicUserEntityCopyWithImpl(this._self, this._then);

  final _PublicUserEntity _self;
  final $Res Function(_PublicUserEntity) _then;

  /// Create a copy of PublicUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? registeredInfo = freezed,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_PublicUserEntity(
      registeredInfo: freezed == registeredInfo
          ? _self.registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as RegisteredInfo?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of PublicUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisteredInfoCopyWith<$Res>? get registeredInfo {
    if (_self.registeredInfo == null) {
      return null;
    }

    return $RegisteredInfoCopyWith<$Res>(_self.registeredInfo!, (value) {
      return _then(_self.copyWith(registeredInfo: value));
    });
  }
}

// dart format on
