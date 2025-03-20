// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_problem_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProblemRequest _$CreateProblemRequestFromJson(Map<String, dynamic> json) {
  return _CreateProblemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateProblemRequest {
  String get question => throw _privateConstructorUsedError;
  String get latex => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  int get timeLimitSeconds => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this CreateProblemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProblemRequestCopyWith<CreateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemRequestCopyWith<$Res> {
  factory $CreateProblemRequestCopyWith(CreateProblemRequest value,
          $Res Function(CreateProblemRequest) then) =
      _$CreateProblemRequestCopyWithImpl<$Res, CreateProblemRequest>;
  @useResult
  $Res call(
      {String question,
      String latex,
      String problemId,
      List<String> answers,
      int timeLimitSeconds,
      String subject,
      String category});
}

/// @nodoc
class _$CreateProblemRequestCopyWithImpl<$Res,
        $Val extends CreateProblemRequest>
    implements $CreateProblemRequestCopyWith<$Res> {
  _$CreateProblemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? latex = null,
    Object? problemId = null,
    Object? answers = null,
    Object? timeLimitSeconds = null,
    Object? subject = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
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
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeLimitSeconds: null == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProblemRequestImplCopyWith<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  factory _$$CreateProblemRequestImplCopyWith(_$CreateProblemRequestImpl value,
          $Res Function(_$CreateProblemRequestImpl) then) =
      __$$CreateProblemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String latex,
      String problemId,
      List<String> answers,
      int timeLimitSeconds,
      String subject,
      String category});
}

/// @nodoc
class __$$CreateProblemRequestImplCopyWithImpl<$Res>
    extends _$CreateProblemRequestCopyWithImpl<$Res, _$CreateProblemRequestImpl>
    implements _$$CreateProblemRequestImplCopyWith<$Res> {
  __$$CreateProblemRequestImplCopyWithImpl(_$CreateProblemRequestImpl _value,
      $Res Function(_$CreateProblemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? latex = null,
    Object? problemId = null,
    Object? answers = null,
    Object? timeLimitSeconds = null,
    Object? subject = null,
    Object? category = null,
  }) {
    return _then(_$CreateProblemRequestImpl(
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
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeLimitSeconds: null == timeLimitSeconds
          ? _value.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProblemRequestImpl extends _CreateProblemRequest {
  const _$CreateProblemRequestImpl(
      {required this.question,
      required this.latex,
      required this.problemId,
      required final List<String> answers,
      this.timeLimitSeconds = 120,
      this.subject = 'math',
      this.category = 'unlimited'})
      : _answers = answers,
        super._();

  factory _$CreateProblemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProblemRequestImplFromJson(json);

  @override
  final String question;
  @override
  final String latex;
  @override
  final String problemId;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey()
  final int timeLimitSeconds;
  @override
  @JsonKey()
  final String subject;
  @override
  @JsonKey()
  final String category;

  @override
  String toString() {
    return 'CreateProblemRequest(question: $question, latex: $latex, problemId: $problemId, answers: $answers, timeLimitSeconds: $timeLimitSeconds, subject: $subject, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProblemRequestImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.latex, latex) || other.latex == latex) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      latex,
      problemId,
      const DeepCollectionEquality().hash(_answers),
      timeLimitSeconds,
      subject,
      category);

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProblemRequestImplCopyWith<_$CreateProblemRequestImpl>
      get copyWith =>
          __$$CreateProblemRequestImplCopyWithImpl<_$CreateProblemRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProblemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateProblemRequest extends CreateProblemRequest {
  const factory _CreateProblemRequest(
      {required final String question,
      required final String latex,
      required final String problemId,
      required final List<String> answers,
      final int timeLimitSeconds,
      final String subject,
      final String category}) = _$CreateProblemRequestImpl;
  const _CreateProblemRequest._() : super._();

  factory _CreateProblemRequest.fromJson(Map<String, dynamic> json) =
      _$CreateProblemRequestImpl.fromJson;

  @override
  String get question;
  @override
  String get latex;
  @override
  String get problemId;
  @override
  List<String> get answers;
  @override
  int get timeLimitSeconds;
  @override
  String get subject;
  @override
  String get category;

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProblemRequestImplCopyWith<_$CreateProblemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
