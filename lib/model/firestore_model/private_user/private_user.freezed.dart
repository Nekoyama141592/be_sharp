// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivateUser _$PrivateUserFromJson(Map<String, dynamic> json) {
  return _PrivateUser.fromJson(json);
}

/// @nodoc
mixin _$PrivateUser {
  String get fcmToken => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateUserCopyWith<PrivateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateUserCopyWith<$Res> {
  factory $PrivateUserCopyWith(
          PrivateUser value, $Res Function(PrivateUser) then) =
      _$PrivateUserCopyWithImpl<$Res, PrivateUser>;
  @useResult
  $Res call({String fcmToken, bool isAdmin, String uid, dynamic createdAt});
}

/// @nodoc
class _$PrivateUserCopyWithImpl<$Res, $Val extends PrivateUser>
    implements $PrivateUserCopyWith<$Res> {
  _$PrivateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? isAdmin = null,
    Object? uid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateUserImplCopyWith<$Res>
    implements $PrivateUserCopyWith<$Res> {
  factory _$$PrivateUserImplCopyWith(
          _$PrivateUserImpl value, $Res Function(_$PrivateUserImpl) then) =
      __$$PrivateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fcmToken, bool isAdmin, String uid, dynamic createdAt});
}

/// @nodoc
class __$$PrivateUserImplCopyWithImpl<$Res>
    extends _$PrivateUserCopyWithImpl<$Res, _$PrivateUserImpl>
    implements _$$PrivateUserImplCopyWith<$Res> {
  __$$PrivateUserImplCopyWithImpl(
      _$PrivateUserImpl _value, $Res Function(_$PrivateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? isAdmin = null,
    Object? uid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$PrivateUserImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivateUserImpl extends _PrivateUser {
  const _$PrivateUserImpl(
      {required this.fcmToken,
      this.isAdmin = false,
      required this.uid,
      required this.createdAt})
      : super._();

  factory _$PrivateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateUserImplFromJson(json);

  @override
  final String fcmToken;
  @override
  @JsonKey()
  final bool isAdmin;
  @override
  final String uid;
  @override
  final dynamic createdAt;

  @override
  String toString() {
    return 'PrivateUser(fcmToken: $fcmToken, isAdmin: $isAdmin, uid: $uid, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateUserImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, isAdmin, uid,
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateUserImplCopyWith<_$PrivateUserImpl> get copyWith =>
      __$$PrivateUserImplCopyWithImpl<_$PrivateUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateUserImplToJson(
      this,
    );
  }
}

abstract class _PrivateUser extends PrivateUser {
  const factory _PrivateUser(
      {required final String fcmToken,
      final bool isAdmin,
      required final String uid,
      required final dynamic createdAt}) = _$PrivateUserImpl;
  const _PrivateUser._() : super._();

  factory _PrivateUser.fromJson(Map<String, dynamic> json) =
      _$PrivateUserImpl.fromJson;

  @override
  String get fcmToken;
  @override
  bool get isAdmin;
  @override
  String get uid;
  @override
  dynamic get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PrivateUserImplCopyWith<_$PrivateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
