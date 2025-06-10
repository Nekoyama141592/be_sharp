// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  dynamic get updatedAt;

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
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registeredInfo, uid,
      const DeepCollectionEquality().hash(updatedAt));

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
  $Res call({RegisteredInfo? registeredInfo, String uid, dynamic updatedAt});

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
              as dynamic,
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

/// @nodoc
@JsonSerializable()
class _ReadPublicUser extends ReadPublicUser {
  const _ReadPublicUser(
      {required this.registeredInfo,
      required this.uid,
      required this.updatedAt})
      : super._();
  factory _ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);

  @override
  final RegisteredInfo? registeredInfo;
  @override
  final String uid;
  @override
  final dynamic updatedAt;

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
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registeredInfo, uid,
      const DeepCollectionEquality().hash(updatedAt));

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
  $Res call({RegisteredInfo? registeredInfo, String uid, dynamic updatedAt});

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
              as dynamic,
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
