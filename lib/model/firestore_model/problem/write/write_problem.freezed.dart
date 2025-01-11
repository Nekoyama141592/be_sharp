// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteProblem _$WriteProblemFromJson(Map<String, dynamic> json) {
  return _WriteProblem.fromJson(json);
}

/// @nodoc
mixin _$WriteProblem {
  String get question => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  int get timeLimitSeconds => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteProblemCopyWith<WriteProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteProblemCopyWith<$Res> {
  factory $WriteProblemCopyWith(
          WriteProblem value, $Res Function(WriteProblem) then) =
      _$WriteProblemCopyWithImpl<$Res, WriteProblem>;
  @useResult
  $Res call(
      {String question,
      dynamic createdAt,
      String problemId,
      int timeLimitSeconds,
      List<String> answers,
      dynamic updatedAt});
}

/// @nodoc
class _$WriteProblemCopyWithImpl<$Res, $Val extends WriteProblem>
    implements $WriteProblemCopyWith<$Res> {
  _$WriteProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? timeLimitSeconds = null,
    Object? answers = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      timeLimitSeconds: null == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteProblemImplCopyWith<$Res>
    implements $WriteProblemCopyWith<$Res> {
  factory _$$WriteProblemImplCopyWith(
          _$WriteProblemImpl value, $Res Function(_$WriteProblemImpl) then) =
      __$$WriteProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      dynamic createdAt,
      String problemId,
      int timeLimitSeconds,
      List<String> answers,
      dynamic updatedAt});
}

/// @nodoc
class __$$WriteProblemImplCopyWithImpl<$Res>
    extends _$WriteProblemCopyWithImpl<$Res, _$WriteProblemImpl>
    implements _$$WriteProblemImplCopyWith<$Res> {
  __$$WriteProblemImplCopyWithImpl(
      _$WriteProblemImpl _value, $Res Function(_$WriteProblemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? timeLimitSeconds = null,
    Object? answers = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WriteProblemImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      timeLimitSeconds: null == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteProblemImpl extends _WriteProblem {
  const _$WriteProblemImpl(
      {required this.question,
      required this.createdAt,
      required this.problemId,
      this.timeLimitSeconds = 120,
      final List<String> answers = const [],
      required this.updatedAt})
      : _answers = answers,
        super._();

  factory _$WriteProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteProblemImplFromJson(json);

  @override
  final String question;
  @override
  final dynamic createdAt;
  @override
  final String problemId;
  @override
  @JsonKey()
  final int timeLimitSeconds;
  final List<String> _answers;
  @override
  @JsonKey()
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'WriteProblem(question: $question, createdAt: $createdAt, problemId: $problemId, timeLimitSeconds: $timeLimitSeconds, answers: $answers, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteProblemImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      const DeepCollectionEquality().hash(createdAt),
      problemId,
      timeLimitSeconds,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteProblemImplCopyWith<_$WriteProblemImpl> get copyWith =>
      __$$WriteProblemImplCopyWithImpl<_$WriteProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteProblemImplToJson(
      this,
    );
  }
}

abstract class _WriteProblem extends WriteProblem {
  const factory _WriteProblem(
      {required final String question,
      required final dynamic createdAt,
      required final String problemId,
      final int timeLimitSeconds,
      final List<String> answers,
      required final dynamic updatedAt}) = _$WriteProblemImpl;
  const _WriteProblem._() : super._();

  factory _WriteProblem.fromJson(Map<String, dynamic> json) =
      _$WriteProblemImpl.fromJson;

  @override
  String get question;
  @override
  dynamic get createdAt;
  @override
  String get problemId;
  @override
  int get timeLimitSeconds;
  @override
  List<String> get answers;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WriteProblemImplCopyWith<_$WriteProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
