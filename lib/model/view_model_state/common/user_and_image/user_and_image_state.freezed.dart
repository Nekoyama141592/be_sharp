// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_and_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAndImageState _$UserAndImageStateFromJson(Map<String, dynamic> json) {
  return _UserAndImageState.fromJson(json);
}

/// @nodoc
mixin _$UserAndImageState {
  ReadPublicUser? get user => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this UserAndImageState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAndImageStateCopyWith<UserAndImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAndImageStateCopyWith<$Res> {
  factory $UserAndImageStateCopyWith(
          UserAndImageState value, $Res Function(UserAndImageState) then) =
      _$UserAndImageStateCopyWithImpl<$Res, UserAndImageState>;
  @useResult
  $Res call({ReadPublicUser? user, String? image});

  $ReadPublicUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserAndImageStateCopyWithImpl<$Res, $Val extends UserAndImageState>
    implements $UserAndImageStateCopyWith<$Res> {
  _$UserAndImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ReadPublicUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAndImageStateImplCopyWith<$Res>
    implements $UserAndImageStateCopyWith<$Res> {
  factory _$$UserAndImageStateImplCopyWith(_$UserAndImageStateImpl value,
          $Res Function(_$UserAndImageStateImpl) then) =
      __$$UserAndImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReadPublicUser? user, String? image});

  @override
  $ReadPublicUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserAndImageStateImplCopyWithImpl<$Res>
    extends _$UserAndImageStateCopyWithImpl<$Res, _$UserAndImageStateImpl>
    implements _$$UserAndImageStateImplCopyWith<$Res> {
  __$$UserAndImageStateImplCopyWithImpl(_$UserAndImageStateImpl _value,
      $Res Function(_$UserAndImageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UserAndImageStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAndImageStateImpl extends _UserAndImageState {
  const _$UserAndImageStateImpl({this.user, this.image}) : super._();

  factory _$UserAndImageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAndImageStateImplFromJson(json);

  @override
  final ReadPublicUser? user;
  @override
  final String? image;

  @override
  String toString() {
    return 'UserAndImageState(user: $user, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAndImageStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, image);

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAndImageStateImplCopyWith<_$UserAndImageStateImpl> get copyWith =>
      __$$UserAndImageStateImplCopyWithImpl<_$UserAndImageStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAndImageStateImplToJson(
      this,
    );
  }
}

abstract class _UserAndImageState extends UserAndImageState {
  const factory _UserAndImageState(
      {final ReadPublicUser? user,
      final String? image}) = _$UserAndImageStateImpl;
  const _UserAndImageState._() : super._();

  factory _UserAndImageState.fromJson(Map<String, dynamic> json) =
      _$UserAndImageStateImpl.fromJson;

  @override
  ReadPublicUser? get user;
  @override
  String? get image;

  /// Create a copy of UserAndImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAndImageStateImplCopyWith<_$UserAndImageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
