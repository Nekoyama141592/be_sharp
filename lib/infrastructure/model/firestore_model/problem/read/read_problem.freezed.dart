// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  @TimestampConverter()
  DateTime? get createdAt;
  String get question;
  String get latex;
  String get problemId;
  int get timeLimitSeconds;
  List<String> get answers;
  String get subject;
  String get category;
  @TimestampConverter()
  DateTime? get updatedAt;

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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
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
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      question,
      latex,
      problemId,
      timeLimitSeconds,
      const DeepCollectionEquality().hash(answers),
      subject,
      category,
      updatedAt);

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
      {@TimestampConverter() DateTime? createdAt,
      String question,
      String latex,
      String problemId,
      int timeLimitSeconds,
      List<String> answers,
      String subject,
      String category,
      @TimestampConverter() DateTime? updatedAt});
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
              as DateTime?,
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
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReadProblem].
extension ReadProblemPatterns on ReadProblem {
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
    TResult Function(_ReadProblem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadProblem() when $default != null:
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
    TResult Function(_ReadProblem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadProblem():
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
    TResult? Function(_ReadProblem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadProblem() when $default != null:
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
            @TimestampConverter() DateTime? createdAt,
            String question,
            String latex,
            String problemId,
            int timeLimitSeconds,
            List<String> answers,
            String subject,
            String category,
            @TimestampConverter() DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReadProblem() when $default != null:
        return $default(
            _that.createdAt,
            _that.question,
            _that.latex,
            _that.problemId,
            _that.timeLimitSeconds,
            _that.answers,
            _that.subject,
            _that.category,
            _that.updatedAt);
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
            @TimestampConverter() DateTime? createdAt,
            String question,
            String latex,
            String problemId,
            int timeLimitSeconds,
            List<String> answers,
            String subject,
            String category,
            @TimestampConverter() DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadProblem():
        return $default(
            _that.createdAt,
            _that.question,
            _that.latex,
            _that.problemId,
            _that.timeLimitSeconds,
            _that.answers,
            _that.subject,
            _that.category,
            _that.updatedAt);
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
            @TimestampConverter() DateTime? createdAt,
            String question,
            String latex,
            String problemId,
            int timeLimitSeconds,
            List<String> answers,
            String subject,
            String category,
            @TimestampConverter() DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReadProblem() when $default != null:
        return $default(
            _that.createdAt,
            _that.question,
            _that.latex,
            _that.problemId,
            _that.timeLimitSeconds,
            _that.answers,
            _that.subject,
            _that.category,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReadProblem extends ReadProblem {
  const _ReadProblem(
      {@TimestampConverter() required this.createdAt,
      required this.question,
      required this.latex,
      required this.problemId,
      required this.timeLimitSeconds,
      required final List<String> answers,
      this.subject = 'math',
      this.category = 'unlimited',
      @TimestampConverter() required this.updatedAt})
      : _answers = answers,
        super._();
  factory _ReadProblem.fromJson(Map<String, dynamic> json) =>
      _$ReadProblemFromJson(json);

  @override
  @TimestampConverter()
  final DateTime? createdAt;
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
  @TimestampConverter()
  final DateTime? updatedAt;

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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
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
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      question,
      latex,
      problemId,
      timeLimitSeconds,
      const DeepCollectionEquality().hash(_answers),
      subject,
      category,
      updatedAt);

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
      {@TimestampConverter() DateTime? createdAt,
      String question,
      String latex,
      String problemId,
      int timeLimitSeconds,
      List<String> answers,
      String subject,
      String category,
      @TimestampConverter() DateTime? updatedAt});
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
              as DateTime?,
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
              as DateTime?,
    ));
  }
}

// dart format on
