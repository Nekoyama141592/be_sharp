// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadProblem _$ReadProblemFromJson(Map<String, dynamic> json) {
  return _ReadProblem.fromJson(json);
}

/// @nodoc
mixin _$ReadProblem {
  dynamic get createdAt => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get latex => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  int get timeLimitSeconds => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReadProblem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadProblemCopyWith<ReadProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadProblemCopyWith<$Res> {
  factory $ReadProblemCopyWith(
          ReadProblem value, $Res Function(ReadProblem) then) =
      _$ReadProblemCopyWithImpl<$Res, ReadProblem>;
  @useResult
  $Res call(
      {dynamic createdAt,
      String question,
      String latex,
      String problemId,
      int timeLimitSeconds,
      List<String> answers,
      String subject,
      String category,
      dynamic updatedAt});
}

/// @nodoc
class _$ReadProblemCopyWithImpl<$Res, $Val extends ReadProblem>
    implements $ReadProblemCopyWith<$Res> {
  _$ReadProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? question = null,
    Object? latex = null,
    Object? problemId = null,
    Object? timeLimitSeconds = null,
    Object? answers = null,
    Object? subject = null,
    Object? category = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      latex: null == latex
          ? _value.latex
          : latex // ignore: cast_nullable_to_non_nullable
              as String,
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadProblemImplCopyWith<$Res>
    implements $ReadProblemCopyWith<$Res> {
  factory _$$ReadProblemImplCopyWith(
          _$ReadProblemImpl value, $Res Function(_$ReadProblemImpl) then) =
      __$$ReadProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic createdAt,
      String question,
      String latex,
      String problemId,
      int timeLimitSeconds,
      List<String> answers,
      String subject,
      String category,
      dynamic updatedAt});
}

/// @nodoc
class __$$ReadProblemImplCopyWithImpl<$Res>
    extends _$ReadProblemCopyWithImpl<$Res, _$ReadProblemImpl>
    implements _$$ReadProblemImplCopyWith<$Res> {
  __$$ReadProblemImplCopyWithImpl(
      _$ReadProblemImpl _value, $Res Function(_$ReadProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? question = null,
    Object? latex = null,
    Object? problemId = null,
    Object? timeLimitSeconds = null,
    Object? answers = null,
    Object? subject = null,
    Object? category = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReadProblemImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      latex: null == latex
          ? _value.latex
          : latex // ignore: cast_nullable_to_non_nullable
              as String,
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
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadProblemImpl extends _ReadProblem {
  const _$ReadProblemImpl(
      {required this.createdAt,
      required this.question,
      required this.latex,
      required this.problemId,
      required this.timeLimitSeconds,
      required final List<String> answers,
      this.subject = 'math',
      this.category = 'unlimited',
      required this.updatedAt})
      : _answers = answers,
        super._();

  factory _$ReadProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadProblemImplFromJson(json);

  @override
  final dynamic createdAt;
  @override
  final String question;
  @override
  final String latex;
  @override
  final String problemId;
  @override
  final int timeLimitSeconds;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final String category;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'ReadProblem(createdAt: $createdAt, question: $question, latex: $latex, problemId: $problemId, timeLimitSeconds: $timeLimitSeconds, answers: $answers, subject: $subject, category: $category, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadProblemImpl &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.latex, latex) || other.latex == latex) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      question,
      latex,
      problemId,
      timeLimitSeconds,
      const DeepCollectionEquality().hash(_answers),
      subject,
      category,
      const DeepCollectionEquality().hash(updatedAt));

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadProblemImplCopyWith<_$ReadProblemImpl> get copyWith =>
      __$$ReadProblemImplCopyWithImpl<_$ReadProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadProblemImplToJson(
      this,
    );
  }
}

abstract class _ReadProblem extends ReadProblem {
  const factory _ReadProblem(
      {required final dynamic createdAt,
      required final String question,
      required final String latex,
      required final String problemId,
      required final int timeLimitSeconds,
      required final List<String> answers,
      final String subject,
      final String category,
      required final dynamic updatedAt}) = _$ReadProblemImpl;
  const _ReadProblem._() : super._();

  factory _ReadProblem.fromJson(Map<String, dynamic> json) =
      _$ReadProblemImpl.fromJson;

  @override
  dynamic get createdAt;
  @override
  String get question;
  @override
  String get latex;
  @override
  String get problemId;
  @override
  int get timeLimitSeconds;
  @override
  List<String> get answers;
  @override
  String get subject;
  @override
  String get category;
  @override
  dynamic get updatedAt;

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadProblemImplCopyWith<_$ReadProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
