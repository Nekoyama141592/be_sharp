// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_public_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadPublicUser {
  RegisteredInfo? get registeredInfo;
  String get uid;
  @TimestampConverter()
  DateTime? get updatedAt;

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<ReadPublicUser> get copyWith =>
      _$ReadPublicUserCopyWithImpl<ReadPublicUser>(
          this as ReadPublicUser, _$identity);

  /// Serializes this ReadPublicUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadPublicUser &&
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
    return 'ReadPublicUser(registeredInfo: $registeredInfo, uid: $uid, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ReadPublicUserCopyWith<$Res> {
  factory $ReadPublicUserCopyWith(
          ReadPublicUser value, $Res Function(ReadPublicUser) _then) =
      _$ReadPublicUserCopyWithImpl;
  @useResult
  $Res call(
      {RegisteredInfo? registeredInfo,
      String uid,
      @TimestampConverter() DateTime? updatedAt});

  $RegisteredInfoCopyWith<$Res>? get registeredInfo;
}

/// @nodoc
class _$ReadPublicUserCopyWithImpl<$Res>
    implements $ReadPublicUserCopyWith<$Res> {
  _$ReadPublicUserCopyWithImpl(this._self, this._then);

  final ReadPublicUser _self;
  final $Res Function(ReadPublicUser) _then;

  /// Create a copy of ReadPublicUser
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

  /// Create a copy of ReadPublicUser
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

/// Adds pattern-matching-related methods to [ReadPublicUser].
extension ReadPublicUserPatterns on ReadPublicUser {
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
    TResult Function(_ReadPublicUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadPublicUser() when $default != null:
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
    TResult Function(_ReadPublicUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadPublicUser():
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
    TResult? Function(_ReadPublicUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadPublicUser() when $default != null:
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
      case _ReadPublicUser() when $default != null:
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
      case _ReadPublicUser():
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
      case _ReadPublicUser() when $default != null:
        return $default(_that.registeredInfo, _that.uid, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReadPublicUser extends ReadPublicUser {
  const _ReadPublicUser(
      {required this.registeredInfo,
      required this.uid,
      @TimestampConverter() required this.updatedAt})
      : super._();
  factory _ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);

  @override
  final RegisteredInfo? registeredInfo;
  @override
  final String uid;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadPublicUserCopyWith<_ReadPublicUser> get copyWith =>
      __$ReadPublicUserCopyWithImpl<_ReadPublicUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReadPublicUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadPublicUser &&
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
    return 'ReadPublicUser(registeredInfo: $registeredInfo, uid: $uid, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ReadPublicUserCopyWith<$Res>
    implements $ReadPublicUserCopyWith<$Res> {
  factory _$ReadPublicUserCopyWith(
          _ReadPublicUser value, $Res Function(_ReadPublicUser) _then) =
      __$ReadPublicUserCopyWithImpl;
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
class __$ReadPublicUserCopyWithImpl<$Res>
    implements _$ReadPublicUserCopyWith<$Res> {
  __$ReadPublicUserCopyWithImpl(this._self, this._then);

  final _ReadPublicUser _self;
  final $Res Function(_ReadPublicUser) _then;

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? registeredInfo = freezed,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_ReadPublicUser(
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

  /// Create a copy of ReadPublicUser
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
