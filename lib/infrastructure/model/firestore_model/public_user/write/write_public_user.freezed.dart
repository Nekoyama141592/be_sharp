// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_public_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WritePublicUser {
  dynamic get createdAt;
  int get followerCount;
  int get followingCount;
  int get muteCount;
  String get uid;
  dynamic get updatedAt;

  /// Create a copy of WritePublicUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WritePublicUserCopyWith<WritePublicUser> get copyWith =>
      _$WritePublicUserCopyWithImpl<WritePublicUser>(
          this as WritePublicUser, _$identity);

  /// Serializes this WritePublicUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WritePublicUser &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.muteCount, muteCount) ||
                other.muteCount == muteCount) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      followerCount,
      followingCount,
      muteCount,
      uid,
      const DeepCollectionEquality().hash(updatedAt));

  @override
  String toString() {
    return 'WritePublicUser(createdAt: $createdAt, followerCount: $followerCount, followingCount: $followingCount, muteCount: $muteCount, uid: $uid, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $WritePublicUserCopyWith<$Res> {
  factory $WritePublicUserCopyWith(
          WritePublicUser value, $Res Function(WritePublicUser) _then) =
      _$WritePublicUserCopyWithImpl;
  @useResult
  $Res call(
      {dynamic createdAt,
      int followerCount,
      int followingCount,
      int muteCount,
      String uid,
      dynamic updatedAt});
}

/// @nodoc
class _$WritePublicUserCopyWithImpl<$Res>
    implements $WritePublicUserCopyWith<$Res> {
  _$WritePublicUserCopyWithImpl(this._self, this._then);

  final WritePublicUser _self;
  final $Res Function(WritePublicUser) _then;

  /// Create a copy of WritePublicUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? followerCount = null,
    Object? followingCount = null,
    Object? muteCount = null,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      followerCount: null == followerCount
          ? _self.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _self.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      muteCount: null == muteCount
          ? _self.muteCount
          : muteCount // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [WritePublicUser].
extension WritePublicUserPatterns on WritePublicUser {
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
    TResult Function(_WritePublicUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WritePublicUser() when $default != null:
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
    TResult Function(_WritePublicUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WritePublicUser():
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
    TResult? Function(_WritePublicUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WritePublicUser() when $default != null:
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
    TResult Function(dynamic createdAt, int followerCount, int followingCount,
            int muteCount, String uid, dynamic updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WritePublicUser() when $default != null:
        return $default(_that.createdAt, _that.followerCount,
            _that.followingCount, _that.muteCount, _that.uid, _that.updatedAt);
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
    TResult Function(dynamic createdAt, int followerCount, int followingCount,
            int muteCount, String uid, dynamic updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WritePublicUser():
        return $default(_that.createdAt, _that.followerCount,
            _that.followingCount, _that.muteCount, _that.uid, _that.updatedAt);
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
    TResult? Function(dynamic createdAt, int followerCount, int followingCount,
            int muteCount, String uid, dynamic updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WritePublicUser() when $default != null:
        return $default(_that.createdAt, _that.followerCount,
            _that.followingCount, _that.muteCount, _that.uid, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WritePublicUser extends WritePublicUser {
  const _WritePublicUser(
      {required this.createdAt,
      this.followerCount = 0,
      this.followingCount = 0,
      this.muteCount = 0,
      required this.uid,
      required this.updatedAt})
      : super._();
  factory _WritePublicUser.fromJson(Map<String, dynamic> json) =>
      _$WritePublicUserFromJson(json);

  @override
  final dynamic createdAt;
  @override
  @JsonKey()
  final int followerCount;
  @override
  @JsonKey()
  final int followingCount;
  @override
  @JsonKey()
  final int muteCount;
  @override
  final String uid;
  @override
  final dynamic updatedAt;

  /// Create a copy of WritePublicUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WritePublicUserCopyWith<_WritePublicUser> get copyWith =>
      __$WritePublicUserCopyWithImpl<_WritePublicUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WritePublicUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WritePublicUser &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.muteCount, muteCount) ||
                other.muteCount == muteCount) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      followerCount,
      followingCount,
      muteCount,
      uid,
      const DeepCollectionEquality().hash(updatedAt));

  @override
  String toString() {
    return 'WritePublicUser(createdAt: $createdAt, followerCount: $followerCount, followingCount: $followingCount, muteCount: $muteCount, uid: $uid, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$WritePublicUserCopyWith<$Res>
    implements $WritePublicUserCopyWith<$Res> {
  factory _$WritePublicUserCopyWith(
          _WritePublicUser value, $Res Function(_WritePublicUser) _then) =
      __$WritePublicUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic createdAt,
      int followerCount,
      int followingCount,
      int muteCount,
      String uid,
      dynamic updatedAt});
}

/// @nodoc
class __$WritePublicUserCopyWithImpl<$Res>
    implements _$WritePublicUserCopyWith<$Res> {
  __$WritePublicUserCopyWithImpl(this._self, this._then);

  final _WritePublicUser _self;
  final $Res Function(_WritePublicUser) _then;

  /// Create a copy of WritePublicUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? createdAt = freezed,
    Object? followerCount = null,
    Object? followingCount = null,
    Object? muteCount = null,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_WritePublicUser(
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      followerCount: null == followerCount
          ? _self.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _self.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      muteCount: null == muteCount
          ? _self.muteCount
          : muteCount // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
