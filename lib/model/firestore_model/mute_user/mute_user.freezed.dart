// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mute_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MuteUser _$MuteUserFromJson(Map<String, dynamic> json) {
  return _MuteUser.fromJson(json);
}

/// @nodoc
mixin _$MuteUser {
  String get muteUid => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuteUserCopyWith<MuteUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuteUserCopyWith<$Res> {
  factory $MuteUserCopyWith(MuteUser value, $Res Function(MuteUser) then) =
      _$MuteUserCopyWithImpl<$Res, MuteUser>;
  @useResult
  $Res call({String muteUid, dynamic createdAt});
}

/// @nodoc
class _$MuteUserCopyWithImpl<$Res, $Val extends MuteUser>
    implements $MuteUserCopyWith<$Res> {
  _$MuteUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muteUid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      muteUid: null == muteUid
          ? _value.muteUid
          : muteUid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuteUserImplCopyWith<$Res>
    implements $MuteUserCopyWith<$Res> {
  factory _$$MuteUserImplCopyWith(
          _$MuteUserImpl value, $Res Function(_$MuteUserImpl) then) =
      __$$MuteUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String muteUid, dynamic createdAt});
}

/// @nodoc
class __$$MuteUserImplCopyWithImpl<$Res>
    extends _$MuteUserCopyWithImpl<$Res, _$MuteUserImpl>
    implements _$$MuteUserImplCopyWith<$Res> {
  __$$MuteUserImplCopyWithImpl(
      _$MuteUserImpl _value, $Res Function(_$MuteUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muteUid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$MuteUserImpl(
      muteUid: null == muteUid
          ? _value.muteUid
          : muteUid // ignore: cast_nullable_to_non_nullable
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
class _$MuteUserImpl extends _MuteUser {
  const _$MuteUserImpl({required this.muteUid, required this.createdAt})
      : super._();

  factory _$MuteUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuteUserImplFromJson(json);

  @override
  final String muteUid;
  @override
  final dynamic createdAt;

  @override
  String toString() {
    return 'MuteUser(muteUid: $muteUid, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuteUserImpl &&
            (identical(other.muteUid, muteUid) || other.muteUid == muteUid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, muteUid, const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuteUserImplCopyWith<_$MuteUserImpl> get copyWith =>
      __$$MuteUserImplCopyWithImpl<_$MuteUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuteUserImplToJson(
      this,
    );
  }
}

abstract class _MuteUser extends MuteUser {
  const factory _MuteUser(
      {required final String muteUid,
      required final dynamic createdAt}) = _$MuteUserImpl;
  const _MuteUser._() : super._();

  factory _MuteUser.fromJson(Map<String, dynamic> json) =
      _$MuteUserImpl.fromJson;

  @override
  String get muteUid;
  @override
  dynamic get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MuteUserImplCopyWith<_$MuteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
