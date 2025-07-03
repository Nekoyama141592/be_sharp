// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnsweredUser {
  ReadPublicUser get publicUser;
  ReadUserAnswer get userAnswer;
  String? get userImage;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnsweredUserCopyWith<AnsweredUser> get copyWith =>
      _$AnsweredUserCopyWithImpl<AnsweredUser>(
          this as AnsweredUser, _$identity);

  /// Serializes this AnsweredUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnsweredUser &&
            (identical(other.publicUser, publicUser) ||
                other.publicUser == publicUser) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicUser, userAnswer, userImage);

  @override
  String toString() {
    return 'AnsweredUser(publicUser: $publicUser, userAnswer: $userAnswer, userImage: $userImage)';
  }
}

/// @nodoc
abstract mixin class $AnsweredUserCopyWith<$Res> {
  factory $AnsweredUserCopyWith(
          AnsweredUser value, $Res Function(AnsweredUser) _then) =
      _$AnsweredUserCopyWithImpl;
  @useResult
  $Res call(
      {ReadPublicUser publicUser,
      ReadUserAnswer userAnswer,
      String? userImage});

  $ReadPublicUserCopyWith<$Res> get publicUser;
  $ReadUserAnswerCopyWith<$Res> get userAnswer;
}

/// @nodoc
class _$AnsweredUserCopyWithImpl<$Res> implements $AnsweredUserCopyWith<$Res> {
  _$AnsweredUserCopyWithImpl(this._self, this._then);

  final AnsweredUser _self;
  final $Res Function(AnsweredUser) _then;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicUser = null,
    Object? userAnswer = null,
    Object? userImage = freezed,
  }) {
    return _then(_self.copyWith(
      publicUser: null == publicUser
          ? _self.publicUser
          : publicUser // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser,
      userAnswer: null == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer,
      userImage: freezed == userImage
          ? _self.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<$Res> get publicUser {
    return $ReadPublicUserCopyWith<$Res>(_self.publicUser, (value) {
      return _then(_self.copyWith(publicUser: value));
    });
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<$Res> get userAnswer {
    return $ReadUserAnswerCopyWith<$Res>(_self.userAnswer, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AnsweredUser extends AnsweredUser {
  const _AnsweredUser(
      {required this.publicUser,
      required this.userAnswer,
      required this.userImage})
      : super._();
  factory _AnsweredUser.fromJson(Map<String, dynamic> json) =>
      _$AnsweredUserFromJson(json);

  @override
  final ReadPublicUser publicUser;
  @override
  final ReadUserAnswer userAnswer;
  @override
  final String? userImage;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnsweredUserCopyWith<_AnsweredUser> get copyWith =>
      __$AnsweredUserCopyWithImpl<_AnsweredUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnsweredUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnsweredUser &&
            (identical(other.publicUser, publicUser) ||
                other.publicUser == publicUser) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicUser, userAnswer, userImage);

  @override
  String toString() {
    return 'AnsweredUser(publicUser: $publicUser, userAnswer: $userAnswer, userImage: $userImage)';
  }
}

/// @nodoc
abstract mixin class _$AnsweredUserCopyWith<$Res>
    implements $AnsweredUserCopyWith<$Res> {
  factory _$AnsweredUserCopyWith(
          _AnsweredUser value, $Res Function(_AnsweredUser) _then) =
      __$AnsweredUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ReadPublicUser publicUser,
      ReadUserAnswer userAnswer,
      String? userImage});

  @override
  $ReadPublicUserCopyWith<$Res> get publicUser;
  @override
  $ReadUserAnswerCopyWith<$Res> get userAnswer;
}

/// @nodoc
class __$AnsweredUserCopyWithImpl<$Res>
    implements _$AnsweredUserCopyWith<$Res> {
  __$AnsweredUserCopyWithImpl(this._self, this._then);

  final _AnsweredUser _self;
  final $Res Function(_AnsweredUser) _then;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicUser = null,
    Object? userAnswer = null,
    Object? userImage = freezed,
  }) {
    return _then(_AnsweredUser(
      publicUser: null == publicUser
          ? _self.publicUser
          : publicUser // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser,
      userAnswer: null == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer,
      userImage: freezed == userImage
          ? _self.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<$Res> get publicUser {
    return $ReadPublicUserCopyWith<$Res>(_self.publicUser, (value) {
      return _then(_self.copyWith(publicUser: value));
    });
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<$Res> get userAnswer {
    return $ReadUserAnswerCopyWith<$Res>(_self.userAnswer, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

// dart format on
