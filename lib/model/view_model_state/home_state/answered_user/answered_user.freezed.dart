// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnsweredUser _$AnsweredUserFromJson(Map<String, dynamic> json) {
  return _AnsweredUser.fromJson(json);
}

/// @nodoc
mixin _$AnsweredUser {
  ReadPublicUser get publicUser => throw _privateConstructorUsedError;
  dynamic get userAnswerQDoc => throw _privateConstructorUsedError;
  ReadUserAnswer get userAnswer => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;

  /// Serializes this AnsweredUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnsweredUserCopyWith<AnsweredUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnsweredUserCopyWith<$Res> {
  factory $AnsweredUserCopyWith(
          AnsweredUser value, $Res Function(AnsweredUser) then) =
      _$AnsweredUserCopyWithImpl<$Res, AnsweredUser>;
  @useResult
  $Res call(
      {ReadPublicUser publicUser,
      dynamic userAnswerQDoc,
      ReadUserAnswer userAnswer,
      String? userImage});

  $ReadPublicUserCopyWith<$Res> get publicUser;
  $ReadUserAnswerCopyWith<$Res> get userAnswer;
}

/// @nodoc
class _$AnsweredUserCopyWithImpl<$Res, $Val extends AnsweredUser>
    implements $AnsweredUserCopyWith<$Res> {
  _$AnsweredUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicUser = null,
    Object? userAnswerQDoc = freezed,
    Object? userAnswer = null,
    Object? userImage = freezed,
  }) {
    return _then(_value.copyWith(
      publicUser: null == publicUser
          ? _value.publicUser
          : publicUser // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser,
      userAnswerQDoc: freezed == userAnswerQDoc
          ? _value.userAnswerQDoc
          : userAnswerQDoc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadPublicUserCopyWith<$Res> get publicUser {
    return $ReadPublicUserCopyWith<$Res>(_value.publicUser, (value) {
      return _then(_value.copyWith(publicUser: value) as $Val);
    });
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<$Res> get userAnswer {
    return $ReadUserAnswerCopyWith<$Res>(_value.userAnswer, (value) {
      return _then(_value.copyWith(userAnswer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnsweredUserImplCopyWith<$Res>
    implements $AnsweredUserCopyWith<$Res> {
  factory _$$AnsweredUserImplCopyWith(
          _$AnsweredUserImpl value, $Res Function(_$AnsweredUserImpl) then) =
      __$$AnsweredUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReadPublicUser publicUser,
      dynamic userAnswerQDoc,
      ReadUserAnswer userAnswer,
      String? userImage});

  @override
  $ReadPublicUserCopyWith<$Res> get publicUser;
  @override
  $ReadUserAnswerCopyWith<$Res> get userAnswer;
}

/// @nodoc
class __$$AnsweredUserImplCopyWithImpl<$Res>
    extends _$AnsweredUserCopyWithImpl<$Res, _$AnsweredUserImpl>
    implements _$$AnsweredUserImplCopyWith<$Res> {
  __$$AnsweredUserImplCopyWithImpl(
      _$AnsweredUserImpl _value, $Res Function(_$AnsweredUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicUser = null,
    Object? userAnswerQDoc = freezed,
    Object? userAnswer = null,
    Object? userImage = freezed,
  }) {
    return _then(_$AnsweredUserImpl(
      publicUser: null == publicUser
          ? _value.publicUser
          : publicUser // ignore: cast_nullable_to_non_nullable
              as ReadPublicUser,
      userAnswerQDoc: freezed == userAnswerQDoc
          ? _value.userAnswerQDoc
          : userAnswerQDoc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userAnswer: null == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnsweredUserImpl extends _AnsweredUser {
  const _$AnsweredUserImpl(
      {required this.publicUser,
      required this.userAnswerQDoc,
      required this.userAnswer,
      required this.userImage})
      : super._();

  factory _$AnsweredUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnsweredUserImplFromJson(json);

  @override
  final ReadPublicUser publicUser;
  @override
  final dynamic userAnswerQDoc;
  @override
  final ReadUserAnswer userAnswer;
  @override
  final String? userImage;

  @override
  String toString() {
    return 'AnsweredUser(publicUser: $publicUser, userAnswerQDoc: $userAnswerQDoc, userAnswer: $userAnswer, userImage: $userImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsweredUserImpl &&
            (identical(other.publicUser, publicUser) ||
                other.publicUser == publicUser) &&
            const DeepCollectionEquality()
                .equals(other.userAnswerQDoc, userAnswerQDoc) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      publicUser,
      const DeepCollectionEquality().hash(userAnswerQDoc),
      userAnswer,
      userImage);

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsweredUserImplCopyWith<_$AnsweredUserImpl> get copyWith =>
      __$$AnsweredUserImplCopyWithImpl<_$AnsweredUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnsweredUserImplToJson(
      this,
    );
  }
}

abstract class _AnsweredUser extends AnsweredUser {
  const factory _AnsweredUser(
      {required final ReadPublicUser publicUser,
      required final dynamic userAnswerQDoc,
      required final ReadUserAnswer userAnswer,
      required final String? userImage}) = _$AnsweredUserImpl;
  const _AnsweredUser._() : super._();

  factory _AnsweredUser.fromJson(Map<String, dynamic> json) =
      _$AnsweredUserImpl.fromJson;

  @override
  ReadPublicUser get publicUser;
  @override
  dynamic get userAnswerQDoc;
  @override
  ReadUserAnswer get userAnswer;
  @override
  String? get userImage;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnsweredUserImplCopyWith<_$AnsweredUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
