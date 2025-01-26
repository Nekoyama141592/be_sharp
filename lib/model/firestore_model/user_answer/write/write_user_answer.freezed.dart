// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_user_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteUserAnswer _$WriteUserAnswerFromJson(Map<String, dynamic> json) {
  return _WriteUserAnswer.fromJson(json);
}

/// @nodoc
mixin _$WriteUserAnswer {
  String get answer => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteUserAnswerCopyWith<WriteUserAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteUserAnswerCopyWith<$Res> {
  factory $WriteUserAnswerCopyWith(
          WriteUserAnswer value, $Res Function(WriteUserAnswer) then) =
      _$WriteUserAnswerCopyWithImpl<$Res, WriteUserAnswer>;
  @useResult
  $Res call({String answer, dynamic createdAt, String problemId, String uid});
}

/// @nodoc
class _$WriteUserAnswerCopyWithImpl<$Res, $Val extends WriteUserAnswer>
    implements $WriteUserAnswerCopyWith<$Res> {
  _$WriteUserAnswerCopyWithImpl(this._value, this._then);

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
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteUserAnswerImplCopyWith<$Res>
    implements $WriteUserAnswerCopyWith<$Res> {
  factory _$$WriteUserAnswerImplCopyWith(_$WriteUserAnswerImpl value,
          $Res Function(_$WriteUserAnswerImpl) then) =
      __$$WriteUserAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answer, dynamic createdAt, String problemId, String uid});
}

/// @nodoc
class __$$WriteUserAnswerImplCopyWithImpl<$Res>
    extends _$WriteUserAnswerCopyWithImpl<$Res, _$WriteUserAnswerImpl>
    implements _$$WriteUserAnswerImplCopyWith<$Res> {
  __$$WriteUserAnswerImplCopyWithImpl(
      _$WriteUserAnswerImpl _value, $Res Function(_$WriteUserAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? uid = null,
  }) {
    return _then(_$WriteUserAnswerImpl(
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
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteUserAnswerImpl extends _WriteUserAnswer {
  const _$WriteUserAnswerImpl(
      {required this.answer,
      required this.createdAt,
      required this.problemId,
      required this.uid})
      : super._();

  factory _$WriteUserAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteUserAnswerImplFromJson(json);

  @override
  final String answer;
  @override
  final dynamic createdAt;
  @override
  final String problemId;
  @override
  final String uid;

  @override
  String toString() {
    return 'WriteUserAnswer(answer: $answer, createdAt: $createdAt, problemId: $problemId, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteUserAnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answer,
      const DeepCollectionEquality().hash(createdAt), problemId, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteUserAnswerImplCopyWith<_$WriteUserAnswerImpl> get copyWith =>
      __$$WriteUserAnswerImplCopyWithImpl<_$WriteUserAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteUserAnswerImplToJson(
      this,
    );
  }
}

abstract class _WriteUserAnswer extends WriteUserAnswer {
  const factory _WriteUserAnswer(
      {required final String answer,
      required final dynamic createdAt,
      required final String problemId,
      required final String uid}) = _$WriteUserAnswerImpl;
  const _WriteUserAnswer._() : super._();

  factory _WriteUserAnswer.fromJson(Map<String, dynamic> json) =
      _$WriteUserAnswerImpl.fromJson;

  @override
  String get answer;
  @override
  dynamic get createdAt;
  @override
  String get problemId;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$WriteUserAnswerImplCopyWith<_$WriteUserAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
