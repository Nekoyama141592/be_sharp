// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrivateUserModel {
  String get fcmToken;
  bool get isAdmin;
  String get uid;
  dynamic get createdAt;

  /// Create a copy of PrivateUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrivateUserModelCopyWith<PrivateUserModel> get copyWith =>
      _$PrivateUserModelCopyWithImpl<PrivateUserModel>(
          this as PrivateUserModel, _$identity);

  /// Serializes this PrivateUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrivateUserModel &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, isAdmin, uid,
      const DeepCollectionEquality().hash(createdAt));

  @override
  String toString() {
    return 'PrivateUserModel(fcmToken: $fcmToken, isAdmin: $isAdmin, uid: $uid, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $PrivateUserModelCopyWith<$Res> {
  factory $PrivateUserModelCopyWith(
          PrivateUserModel value, $Res Function(PrivateUserModel) _then) =
      _$PrivateUserModelCopyWithImpl;
  @useResult
  $Res call({String fcmToken, bool isAdmin, String uid, dynamic createdAt});
}

/// @nodoc
class _$PrivateUserModelCopyWithImpl<$Res>
    implements $PrivateUserModelCopyWith<$Res> {
  _$PrivateUserModelCopyWithImpl(this._self, this._then);

  final PrivateUserModel _self;
  final $Res Function(PrivateUserModel) _then;

  /// Create a copy of PrivateUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? isAdmin = null,
    Object? uid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      fcmToken: null == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _self.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [PrivateUserModel].
extension PrivateUserModelPatterns on PrivateUserModel {
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
    TResult Function(_PrivateUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PrivateUserModel() when $default != null:
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
    TResult Function(_PrivateUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrivateUserModel():
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
    TResult? Function(_PrivateUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrivateUserModel() when $default != null:
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
    TResult Function(
            String fcmToken, bool isAdmin, String uid, dynamic createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PrivateUserModel() when $default != null:
        return $default(
            _that.fcmToken, _that.isAdmin, _that.uid, _that.createdAt);
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
    TResult Function(
            String fcmToken, bool isAdmin, String uid, dynamic createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrivateUserModel():
        return $default(
            _that.fcmToken, _that.isAdmin, _that.uid, _that.createdAt);
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
    TResult? Function(
            String fcmToken, bool isAdmin, String uid, dynamic createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrivateUserModel() when $default != null:
        return $default(
            _that.fcmToken, _that.isAdmin, _that.uid, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PrivateUserModel extends PrivateUserModel {
  const _PrivateUserModel(
      {required this.fcmToken,
      this.isAdmin = false,
      required this.uid,
      required this.createdAt})
      : super._();
  factory _PrivateUserModel.fromJson(Map<String, dynamic> json) =>
      _$PrivateUserModelFromJson(json);

  @override
  final String fcmToken;
  @override
  @JsonKey()
  final bool isAdmin;
  @override
  final String uid;
  @override
  final dynamic createdAt;

  /// Create a copy of PrivateUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrivateUserModelCopyWith<_PrivateUserModel> get copyWith =>
      __$PrivateUserModelCopyWithImpl<_PrivateUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PrivateUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrivateUserModel &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, isAdmin, uid,
      const DeepCollectionEquality().hash(createdAt));

  @override
  String toString() {
    return 'PrivateUserModel(fcmToken: $fcmToken, isAdmin: $isAdmin, uid: $uid, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$PrivateUserModelCopyWith<$Res>
    implements $PrivateUserModelCopyWith<$Res> {
  factory _$PrivateUserModelCopyWith(
          _PrivateUserModel value, $Res Function(_PrivateUserModel) _then) =
      __$PrivateUserModelCopyWithImpl;
  @override
  @useResult
  $Res call({String fcmToken, bool isAdmin, String uid, dynamic createdAt});
}

/// @nodoc
class __$PrivateUserModelCopyWithImpl<$Res>
    implements _$PrivateUserModelCopyWith<$Res> {
  __$PrivateUserModelCopyWithImpl(this._self, this._then);

  final _PrivateUserModel _self;
  final $Res Function(_PrivateUserModel) _then;

  /// Create a copy of PrivateUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fcmToken = null,
    Object? isAdmin = null,
    Object? uid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_PrivateUserModel(
      fcmToken: null == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _self.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
