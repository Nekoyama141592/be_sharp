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
  Map<String, dynamic> get registeredInfo => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadPublicUserCopyWith<ReadPublicUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadPublicUserCopyWith<$Res> {
  factory $ReadPublicUserCopyWith(
          ReadPublicUser value, $Res Function(ReadPublicUser) then) =
      _$ReadPublicUserCopyWithImpl<$Res, ReadPublicUser>;
  @useResult
  $Res call({Map<String, dynamic> registeredInfo, String uid});
}

/// @nodoc
class _$ReadPublicUserCopyWithImpl<$Res, $Val extends ReadPublicUser>
    implements $ReadPublicUserCopyWith<$Res> {
  _$ReadPublicUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredInfo = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      registeredInfo: null == registeredInfo
          ? _value.registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({Map<String, dynamic> registeredInfo, String uid});
}

/// @nodoc
class __$$ReadPublicUserImplCopyWithImpl<$Res>
    extends _$ReadPublicUserCopyWithImpl<$Res, _$ReadPublicUserImpl>
    implements _$$ReadPublicUserImplCopyWith<$Res> {
  __$$ReadPublicUserImplCopyWithImpl(
      _$ReadPublicUserImpl _value, $Res Function(_$ReadPublicUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredInfo = null,
    Object? uid = null,
  }) {
    return _then(_$ReadPublicUserImpl(
      registeredInfo: null == registeredInfo
          ? _value._registeredInfo
          : registeredInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadPublicUserImpl extends _ReadPublicUser {
  const _$ReadPublicUserImpl(
      {required final Map<String, dynamic> registeredInfo, required this.uid})
      : _registeredInfo = registeredInfo,
        super._();

  factory _$ReadPublicUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadPublicUserImplFromJson(json);

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
  String toString() {
    return 'ReadPublicUser(registeredInfo: $registeredInfo, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadPublicUserImpl &&
            const DeepCollectionEquality()
                .equals(other._registeredInfo, _registeredInfo) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_registeredInfo), uid);

  @JsonKey(ignore: true)
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
      {required final Map<String, dynamic> registeredInfo,
      required final String uid}) = _$ReadPublicUserImpl;
  const _ReadPublicUser._() : super._();

  factory _ReadPublicUser.fromJson(Map<String, dynamic> json) =
      _$ReadPublicUserImpl.fromJson;

  @override
  Map<String, dynamic> get registeredInfo;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$ReadPublicUserImplCopyWith<_$ReadPublicUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
