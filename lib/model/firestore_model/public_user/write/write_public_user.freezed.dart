// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_public_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WritePublicUser _$WritePublicUserFromJson(Map<String, dynamic> json) {
  return _WritePublicUser.fromJson(json);
}

/// @nodoc
mixin _$WritePublicUser {
  dynamic get createdAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get registeredInfo => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WritePublicUserCopyWith<WritePublicUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritePublicUserCopyWith<$Res> {
  factory $WritePublicUserCopyWith(
          WritePublicUser value, $Res Function(WritePublicUser) then) =
      _$WritePublicUserCopyWithImpl<$Res, WritePublicUser>;
  @useResult
  $Res call(
      {dynamic createdAt,
      Map<String, dynamic> registeredInfo,
      String uid,
      dynamic updatedAt});
}

/// @nodoc
class _$WritePublicUserCopyWithImpl<$Res, $Val extends WritePublicUser>
    implements $WritePublicUserCopyWith<$Res> {
  _$WritePublicUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? registeredInfo = null,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      registeredInfo: null == registeredInfo
          ? _value.registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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
}

/// @nodoc
abstract class _$$WritePublicUserImplCopyWith<$Res>
    implements $WritePublicUserCopyWith<$Res> {
  factory _$$WritePublicUserImplCopyWith(_$WritePublicUserImpl value,
          $Res Function(_$WritePublicUserImpl) then) =
      __$$WritePublicUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic createdAt,
      Map<String, dynamic> registeredInfo,
      String uid,
      dynamic updatedAt});
}

/// @nodoc
class __$$WritePublicUserImplCopyWithImpl<$Res>
    extends _$WritePublicUserCopyWithImpl<$Res, _$WritePublicUserImpl>
    implements _$$WritePublicUserImplCopyWith<$Res> {
  __$$WritePublicUserImplCopyWithImpl(
      _$WritePublicUserImpl _value, $Res Function(_$WritePublicUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? registeredInfo = null,
    Object? uid = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WritePublicUserImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      registeredInfo: null == registeredInfo
          ? _value._registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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
class _$WritePublicUserImpl extends _WritePublicUser {
  const _$WritePublicUserImpl(
      {required this.createdAt,
      required final Map<String, dynamic> registeredInfo,
      required this.uid,
      required this.updatedAt})
      : _registeredInfo = registeredInfo,
        super._();

  factory _$WritePublicUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$WritePublicUserImplFromJson(json);

  @override
  final dynamic createdAt;
  final Map<String, dynamic> _registeredInfo;
  @override
  Map<String, dynamic> get registeredInfo {
    if (_registeredInfo is EqualUnmodifiableMapView) return _registeredInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_registeredInfo);
  }

  @override
  final String uid;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'WritePublicUser(createdAt: $createdAt, registeredInfo: $registeredInfo, uid: $uid, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WritePublicUserImpl &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other._registeredInfo, _registeredInfo) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(_registeredInfo),
      uid,
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WritePublicUserImplCopyWith<_$WritePublicUserImpl> get copyWith =>
      __$$WritePublicUserImplCopyWithImpl<_$WritePublicUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WritePublicUserImplToJson(
      this,
    );
  }
}

abstract class _WritePublicUser extends WritePublicUser {
  const factory _WritePublicUser(
      {required final dynamic createdAt,
      required final Map<String, dynamic> registeredInfo,
      required final String uid,
      required final dynamic updatedAt}) = _$WritePublicUserImpl;
  const _WritePublicUser._() : super._();

  factory _WritePublicUser.fromJson(Map<String, dynamic> json) =
      _$WritePublicUserImpl.fromJson;

  @override
  dynamic get createdAt;
  @override
  Map<String, dynamic> get registeredInfo;
  @override
  String get uid;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WritePublicUserImplCopyWith<_$WritePublicUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
