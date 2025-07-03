// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadProblem {
  dynamic get createdAt;
  String get question;
  String get latex;
  String get problemId;
  int get timeLimitSeconds;
  List<String> get answers;
  String get subject;
  String get category;
  dynamic get updatedAt;

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<ReadProblem> get copyWith =>
      _$ReadProblemCopyWithImpl<ReadProblem>(this as ReadProblem, _$identity);

  /// Serializes this ReadProblem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadProblem &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.latex, latex) || other.latex == latex) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
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
      const DeepCollectionEquality().hash(answers),
      subject,
      category,
      const DeepCollectionEquality().hash(updatedAt));

  @override
  String toString() {
    return 'ReadProblem(createdAt: $createdAt, question: $question, latex: $latex, problemId: $problemId, timeLimitSeconds: $timeLimitSeconds, answers: $answers, subject: $subject, category: $category, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ReadProblemCopyWith<$Res> {
  factory $ReadProblemCopyWith(
          ReadProblem value, $Res Function(ReadProblem) _then) =
      _$ReadProblemCopyWithImpl;
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
class _$ReadProblemCopyWithImpl<$Res> implements $ReadProblemCopyWith<$Res> {
  _$ReadProblemCopyWithImpl(this._self, this._then);

  final ReadProblem _self;
  final $Res Function(ReadProblem) _then;

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
    return _then(_self.copyWith(
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      latex: null == latex
          ? _self.latex
          : latex // ignore: cast_nullable_to_non_nullable
              as String,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      timeLimitSeconds: null == timeLimitSeconds
          ? _self.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _self.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReadProblem extends ReadProblem {
  const _ReadProblem(
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
  factory _ReadProblem.fromJson(Map<String, dynamic> json) =>
      _$ReadProblemFromJson(json);

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

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadProblemCopyWith<_ReadProblem> get copyWith =>
      __$ReadProblemCopyWithImpl<_ReadProblem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReadProblemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadProblem &&
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

  @override
  String toString() {
    return 'ReadProblem(createdAt: $createdAt, question: $question, latex: $latex, problemId: $problemId, timeLimitSeconds: $timeLimitSeconds, answers: $answers, subject: $subject, category: $category, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ReadProblemCopyWith<$Res>
    implements $ReadProblemCopyWith<$Res> {
  factory _$ReadProblemCopyWith(
          _ReadProblem value, $Res Function(_ReadProblem) _then) =
      __$ReadProblemCopyWithImpl;
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
class __$ReadProblemCopyWithImpl<$Res> implements _$ReadProblemCopyWith<$Res> {
  __$ReadProblemCopyWithImpl(this._self, this._then);

  final _ReadProblem _self;
  final $Res Function(_ReadProblem) _then;

  /// Create a copy of ReadProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_ReadProblem(
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      latex: null == latex
          ? _self.latex
          : latex // ignore: cast_nullable_to_non_nullable
              as String,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      timeLimitSeconds: null == timeLimitSeconds
          ? _self.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
