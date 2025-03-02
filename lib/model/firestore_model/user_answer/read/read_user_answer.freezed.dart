// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_user_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadUserAnswer _$ReadUserAnswerFromJson(Map<String, dynamic> json) {
  return _ReadUserAnswer.fromJson(json);
}

/// @nodoc
mixin _$ReadUserAnswer {
  String get answer => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  DetectedText? get caption => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadUserAnswerCopyWith<ReadUserAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadUserAnswerCopyWith<$Res> {
  factory $ReadUserAnswerCopyWith(
          ReadUserAnswer value, $Res Function(ReadUserAnswer) then) =
      _$ReadUserAnswerCopyWithImpl<$Res, ReadUserAnswer>;
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      String problemId,
      DetectedText? caption,
      String uid});

  $DetectedTextCopyWith<$Res>? get caption;
}

/// @nodoc
class _$ReadUserAnswerCopyWithImpl<$Res, $Val extends ReadUserAnswer>
    implements $ReadUserAnswerCopyWith<$Res> {
  _$ReadUserAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? caption = freezed,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res>? get caption {
    if (_value.caption == null) {
      return null;
    }

    return $DetectedTextCopyWith<$Res>(_value.caption!, (value) {
      return _then(_value.copyWith(caption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadUserAnswerImplCopyWith<$Res>
    implements $ReadUserAnswerCopyWith<$Res> {
  factory _$$ReadUserAnswerImplCopyWith(_$ReadUserAnswerImpl value,
          $Res Function(_$ReadUserAnswerImpl) then) =
      __$$ReadUserAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      String problemId,
      DetectedText? caption,
      String uid});

  @override
  $DetectedTextCopyWith<$Res>? get caption;
}

/// @nodoc
class __$$ReadUserAnswerImplCopyWithImpl<$Res>
    extends _$ReadUserAnswerCopyWithImpl<$Res, _$ReadUserAnswerImpl>
    implements _$$ReadUserAnswerImplCopyWith<$Res> {
  __$$ReadUserAnswerImplCopyWithImpl(
      _$ReadUserAnswerImpl _value, $Res Function(_$ReadUserAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? caption = freezed,
    Object? uid = null,
  }) {
    return _then(_$ReadUserAnswerImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadUserAnswerImpl extends _ReadUserAnswer {
  const _$ReadUserAnswerImpl(
      {required this.answer,
      required this.createdAt,
      required this.problemId,
      required this.caption,
      required this.uid})
      : super._();

  factory _$ReadUserAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadUserAnswerImplFromJson(json);

  @override
  final String answer;
  @override
  final dynamic createdAt;
  @override
  final String problemId;
  @override
  final DetectedText? caption;
  @override
  final String uid;

  @override
  String toString() {
    return 'ReadUserAnswer(answer: $answer, createdAt: $createdAt, problemId: $problemId, caption: $caption, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadUserAnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answer,
      const DeepCollectionEquality().hash(createdAt), problemId, caption, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadUserAnswerImplCopyWith<_$ReadUserAnswerImpl> get copyWith =>
      __$$ReadUserAnswerImplCopyWithImpl<_$ReadUserAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadUserAnswerImplToJson(
      this,
    );
  }
}

abstract class _ReadUserAnswer extends ReadUserAnswer {
  const factory _ReadUserAnswer(
      {required final String answer,
      required final dynamic createdAt,
      required final String problemId,
      required final DetectedText? caption,
      required final String uid}) = _$ReadUserAnswerImpl;
  const _ReadUserAnswer._() : super._();

  factory _ReadUserAnswer.fromJson(Map<String, dynamic> json) =
      _$ReadUserAnswerImpl.fromJson;

  @override
  String get answer;
  @override
  dynamic get createdAt;
  @override
  String get problemId;
  @override
  DetectedText? get caption;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$ReadUserAnswerImplCopyWith<_$ReadUserAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
