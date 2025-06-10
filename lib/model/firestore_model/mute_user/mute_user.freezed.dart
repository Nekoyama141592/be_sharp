// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mute_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MuteUser {
  String get muteUid;
  dynamic get createdAt;

  /// Create a copy of MuteUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MuteUserCopyWith<MuteUser> get copyWith =>
      _$MuteUserCopyWithImpl<MuteUser>(this as MuteUser, _$identity);

  /// Serializes this MuteUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MuteUser &&
            (identical(other.muteUid, muteUid) || other.muteUid == muteUid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, muteUid, const DeepCollectionEquality().hash(createdAt));

  @override
  String toString() {
    return 'MuteUser(muteUid: $muteUid, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $MuteUserCopyWith<$Res> {
  factory $MuteUserCopyWith(MuteUser value, $Res Function(MuteUser) _then) =
      _$MuteUserCopyWithImpl;
  @useResult
  $Res call({String muteUid, dynamic createdAt});
}

/// @nodoc
class _$MuteUserCopyWithImpl<$Res> implements $MuteUserCopyWith<$Res> {
  _$MuteUserCopyWithImpl(this._self, this._then);

  final MuteUser _self;
  final $Res Function(MuteUser) _then;

  /// Create a copy of MuteUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muteUid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      muteUid: null == muteUid
          ? _self.muteUid
          : muteUid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MuteUser extends MuteUser {
  const _MuteUser({required this.muteUid, required this.createdAt}) : super._();
  factory _MuteUser.fromJson(Map<String, dynamic> json) =>
      _$MuteUserFromJson(json);

  @override
  final String muteUid;
  @override
  final dynamic createdAt;

  /// Create a copy of MuteUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MuteUserCopyWith<_MuteUser> get copyWith =>
      __$MuteUserCopyWithImpl<_MuteUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MuteUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MuteUser &&
            (identical(other.muteUid, muteUid) || other.muteUid == muteUid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, muteUid, const DeepCollectionEquality().hash(createdAt));

  @override
  String toString() {
    return 'MuteUser(muteUid: $muteUid, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$MuteUserCopyWith<$Res>
    implements $MuteUserCopyWith<$Res> {
  factory _$MuteUserCopyWith(_MuteUser value, $Res Function(_MuteUser) _then) =
      __$MuteUserCopyWithImpl;
  @override
  @useResult
  $Res call({String muteUid, dynamic createdAt});
}

/// @nodoc
class __$MuteUserCopyWithImpl<$Res> implements _$MuteUserCopyWith<$Res> {
  __$MuteUserCopyWithImpl(this._self, this._then);

  final _MuteUser _self;
  final $Res Function(_MuteUser) _then;

  /// Create a copy of MuteUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? muteUid = null,
    Object? createdAt = freezed,
  }) {
    return _then(_MuteUser(
      muteUid: null == muteUid
          ? _self.muteUid
          : muteUid // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
