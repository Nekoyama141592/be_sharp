// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_and_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAndImageState {
  ReadPublicUser? get user;
  String? get image;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAndImageStateCopyWith<UserAndImageState> get copyWith =>
      _$UserAndImageStateCopyWithImpl<UserAndImageState>(
          this as UserAndImageState, _$identity);

  /// Serializes this UserAndImageState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAndImageState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, image);

  @override
  String toString() {
    return 'UserAndImageState(user: $user, image: $image)';
  }
}

/// @nodoc
abstract mixin class $UserAndImageStateCopyWith<$Res> {
  factory $UserAndImageStateCopyWith(
          UserAndImageState value, $Res Function(UserAndImageState) _then) =
      _$UserAndImageStateCopyWithImpl;
  @useResult
  $Res call({ReadPublicUser? user, String? image});

  $ReadPublicUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserAndImageStateCopyWithImpl<$Res>
    implements $UserAndImageStateCopyWith<$Res> {
  _$UserAndImageStateCopyWithImpl(this._self, this._then);

  final UserAndImageState _self;
  final $Res Function(UserAndImageState) _then;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $ReadPublicUserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserAndImageState extends UserAndImageState {
  const _UserAndImageState({this.user, this.image}) : super._();
  factory _UserAndImageState.fromJson(Map<String, dynamic> json) =>
      _$UserAndImageStateFromJson(json);

  @override
  final ReadPublicUser? user;
  @override
  final String? image;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserAndImageStateCopyWith<_UserAndImageState> get copyWith =>
      __$UserAndImageStateCopyWithImpl<_UserAndImageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserAndImageStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAndImageState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, image);

  @override
  String toString() {
    return 'UserAndImageState(user: $user, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$UserAndImageStateCopyWith<$Res>
    implements $UserAndImageStateCopyWith<$Res> {
  factory _$UserAndImageStateCopyWith(
          _UserAndImageState value, $Res Function(_UserAndImageState) _then) =
      __$UserAndImageStateCopyWithImpl;
  @override
  @useResult
  $Res call({ReadPublicUser? user, String? image});

  @override
  $ReadPublicUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserAndImageStateCopyWithImpl<$Res>
    implements _$UserAndImageStateCopyWith<$Res> {
  __$UserAndImageStateCopyWithImpl(this._self, this._then);

  final _UserAndImageState _self;
  final $Res Function(_UserAndImageState) _then;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(_UserAndImageState(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $ReadPublicUserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
