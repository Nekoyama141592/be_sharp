// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_public_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadPublicUser _$ReadPublicUserFromJson(Map<String, dynamic> json) {
  return _ReadPublicUser.fromJson(json);
}

/// @nodoc
mixin _$ReadPublicUser {
  RegisteredInfo? get registeredInfo => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReadPublicUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadPublicUserCopyWith<ReadPublicUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadPublicUserCopyWith<$Res> {
  factory $ReadPublicUserCopyWith(
          ReadPublicUser value, $Res Function(ReadPublicUser) then) =
      _$ReadPublicUserCopyWithImpl<$Res, ReadPublicUser>;
  @useResult
  $Res call({RegisteredInfo? registeredInfo, String uid, dynamic updatedAt});

  $RegisteredInfoCopyWith<$Res>? get registeredInfo;
}

/// @nodoc
class _$ReadPublicUserCopyWithImpl<$Res, $Val extends ReadPublicUser>
    implements $ReadPublicUserCopyWith<$Res> {
  _$ReadPublicUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredInfo = freezed,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      registeredInfo: freezed == registeredInfo
          ? _value.registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as RegisteredInfo?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisteredInfoCopyWith<$Res>? get registeredInfo {
    if (_value.registeredInfo == null) {
      return null;
    }

    return $RegisteredInfoCopyWith<$Res>(_value.registeredInfo!, (value) {
      return _then(_value.copyWith(registeredInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadPublicUserImplCopyWith<$Res>
    implements $ReadPublicUserCopyWith<$Res> {
  factory _$$ReadPublicUserImplCopyWith(_$ReadPublicUserImpl value,
          $Res Function(_$ReadPublicUserImpl) then) =
      __$$ReadPublicUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisteredInfo? registeredInfo, String uid, dynamic updatedAt});

  @override
  $RegisteredInfoCopyWith<$Res>? get registeredInfo;
}

/// @nodoc
class __$$ReadPublicUserImplCopyWithImpl<$Res>
    extends _$ReadPublicUserCopyWithImpl<$Res, _$ReadPublicUserImpl>
    implements _$$ReadPublicUserImplCopyWith<$Res> {
  __$$ReadPublicUserImplCopyWithImpl(
      _$ReadPublicUserImpl _value, $Res Function(_$ReadPublicUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredInfo = freezed,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReadPublicUserImpl(
      registeredInfo: freezed == registeredInfo
          ? _value.registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as RegisteredInfo?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadPublicUserImpl extends _ReadPublicUser {
  const _$ReadPublicUserImpl(
      {required this.registeredInfo,
      required this.uid,
      required this.updatedAt})
      : super._();

  factory _$ReadPublicUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadPublicUserImplFromJson(json);

  @override
  final RegisteredInfo? registeredInfo;
  @override
  final String uid;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'ReadPublicUser(registeredInfo: $registeredInfo, uid: $uid, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadPublicUserImpl &&
            (identical(other.registeredInfo, registeredInfo) ||
                other.registeredInfo == registeredInfo) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registeredInfo, uid,
      const DeepCollectionEquality().hash(updatedAt));

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadPublicUserImplCopyWith<_$ReadPublicUserImpl> get copyWith =>
      __$$ReadPublicUserImplCopyWithImpl<_$ReadPublicUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadPublicUserImplToJson(
      this,
    );
  }
}

abstract class _ReadPublicUser extends ReadPublicUser {
  const factory _ReadPublicUser(
      {required final RegisteredInfo? registeredInfo,
      required final String uid,
      required final dynamic updatedAt}) = _$ReadPublicUserImpl;
  const _ReadPublicUser._() : super._();

  factory _ReadPublicUser.fromJson(Map<String, dynamic> json) =
      _$ReadPublicUserImpl.fromJson;

  @override
  RegisteredInfo? get registeredInfo;
  @override
  String get uid;
  @override
  dynamic get updatedAt;

  /// Create a copy of ReadPublicUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadPublicUserImplCopyWith<_$ReadPublicUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
