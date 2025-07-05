// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_problem_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProblemRequest {
  String get question;
  String get latex;
  String get problemId;
  List<String> get answers;
  int get timeLimitSeconds;
  String get subject;
  String get category;

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProblemRequestCopyWith<CreateProblemRequest> get copyWith =>
      _$CreateProblemRequestCopyWithImpl<CreateProblemRequest>(
          this as CreateProblemRequest, _$identity);

  /// Serializes this CreateProblemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProblemRequest &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.latex, latex) || other.latex == latex) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
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
      const DeepCollectionEquality().hash(answers),
      timeLimitSeconds,
      subject,
      category);

  @override
  String toString() {
    return 'CreateProblemRequest(question: $question, latex: $latex, problemId: $problemId, answers: $answers, timeLimitSeconds: $timeLimitSeconds, subject: $subject, category: $category)';
  }
}

/// @nodoc
abstract mixin class $CreateProblemRequestCopyWith<$Res> {
  factory $CreateProblemRequestCopyWith(CreateProblemRequest value,
          $Res Function(CreateProblemRequest) _then) =
      _$CreateProblemRequestCopyWithImpl;
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
class _$CreateProblemRequestCopyWithImpl<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  _$CreateProblemRequestCopyWithImpl(this._self, this._then);

  final CreateProblemRequest _self;
  final $Res Function(CreateProblemRequest) _then;

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
    return _then(_self.copyWith(
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
      answers: null == answers
          ? _self.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeLimitSeconds: null == timeLimitSeconds
          ? _self.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProblemRequest].
extension CreateProblemRequestPatterns on CreateProblemRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateProblemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProblemRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateProblemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemRequest():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateProblemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String question,
            String latex,
            String problemId,
            List<String> answers,
            int timeLimitSeconds,
            String subject,
            String category)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProblemRequest() when $default != null:
        return $default(
            _that.question,
            _that.latex,
            _that.problemId,
            _that.answers,
            _that.timeLimitSeconds,
            _that.subject,
            _that.category);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String question,
            String latex,
            String problemId,
            List<String> answers,
            int timeLimitSeconds,
            String subject,
            String category)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemRequest():
        return $default(
            _that.question,
            _that.latex,
            _that.problemId,
            _that.answers,
            _that.timeLimitSeconds,
            _that.subject,
            _that.category);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String question,
            String latex,
            String problemId,
            List<String> answers,
            int timeLimitSeconds,
            String subject,
            String category)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemRequest() when $default != null:
        return $default(
            _that.question,
            _that.latex,
            _that.problemId,
            _that.answers,
            _that.timeLimitSeconds,
            _that.subject,
            _that.category);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateProblemRequest extends CreateProblemRequest {
  const _CreateProblemRequest(
      {required this.question,
      required this.latex,
      required this.problemId,
      required final List<String> answers,
      this.timeLimitSeconds = 120,
      this.subject = 'math',
      this.category = 'unlimited'})
      : _answers = answers,
        super._();
  factory _CreateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemRequestFromJson(json);

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

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProblemRequestCopyWith<_CreateProblemRequest> get copyWith =>
      __$CreateProblemRequestCopyWithImpl<_CreateProblemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProblemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProblemRequest &&
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

  @override
  String toString() {
    return 'CreateProblemRequest(question: $question, latex: $latex, problemId: $problemId, answers: $answers, timeLimitSeconds: $timeLimitSeconds, subject: $subject, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$CreateProblemRequestCopyWith<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  factory _$CreateProblemRequestCopyWith(_CreateProblemRequest value,
          $Res Function(_CreateProblemRequest) _then) =
      __$CreateProblemRequestCopyWithImpl;
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
class __$CreateProblemRequestCopyWithImpl<$Res>
    implements _$CreateProblemRequestCopyWith<$Res> {
  __$CreateProblemRequestCopyWithImpl(this._self, this._then);

  final _CreateProblemRequest _self;
  final $Res Function(_CreateProblemRequest) _then;

  /// Create a copy of CreateProblemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? question = null,
    Object? latex = null,
    Object? problemId = null,
    Object? answers = null,
    Object? timeLimitSeconds = null,
    Object? subject = null,
    Object? category = null,
  }) {
    return _then(_CreateProblemRequest(
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
      answers: null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeLimitSeconds: null == timeLimitSeconds
          ? _self.timeLimitSeconds
          : timeLimitSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _self.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
