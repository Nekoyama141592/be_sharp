// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProblemEntity {
  @TimestampConverter()
  DateTime? get createdAt;
  String get question;
  String get latex;
  String get problemId;
  int get timeLimitSeconds;
  List<String> get answers;

  /// Create a copy of ProblemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProblemEntityCopyWith<ProblemEntity> get copyWith =>
      _$ProblemEntityCopyWithImpl<ProblemEntity>(
          this as ProblemEntity, _$identity);

  /// Serializes this ProblemEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProblemEntity &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.latex, latex) || other.latex == latex) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            const DeepCollectionEquality().equals(other.answers, answers));
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
      const DeepCollectionEquality().hash(answers));

  @override
  String toString() {
    return 'ProblemEntity(createdAt: $createdAt, question: $question, latex: $latex, problemId: $problemId, timeLimitSeconds: $timeLimitSeconds, answers: $answers)';
  }
}

/// @nodoc
abstract mixin class $ProblemEntityCopyWith<$Res> {
  factory $ProblemEntityCopyWith(
          ProblemEntity value, $Res Function(ProblemEntity) _then) =
      _$ProblemEntityCopyWithImpl;
  @useResult
  $Res call(
      {@TimestampConverter() DateTime? createdAt,
      String question,
      String latex,
      String problemId,
      int timeLimitSeconds,
      List<String> answers});
}

/// @nodoc
class _$ProblemEntityCopyWithImpl<$Res>
    implements $ProblemEntityCopyWith<$Res> {
  _$ProblemEntityCopyWithImpl(this._self, this._then);

  final ProblemEntity _self;
  final $Res Function(ProblemEntity) _then;

  /// Create a copy of ProblemEntity
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
    ));
  }
}

/// Adds pattern-matching-related methods to [ProblemEntity].
extension ProblemEntityPatterns on ProblemEntity {
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
    TResult Function(_ProblemEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProblemEntity() when $default != null:
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
    TResult Function(_ProblemEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemEntity():
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
    TResult? Function(_ProblemEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemEntity() when $default != null:
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
            List<String> answers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProblemEntity() when $default != null:
        return $default(_that.createdAt, _that.question, _that.latex,
            _that.problemId, _that.timeLimitSeconds, _that.answers);
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
            List<String> answers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemEntity():
        return $default(_that.createdAt, _that.question, _that.latex,
            _that.problemId, _that.timeLimitSeconds, _that.answers);
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
            List<String> answers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemEntity() when $default != null:
        return $default(_that.createdAt, _that.question, _that.latex,
            _that.problemId, _that.timeLimitSeconds, _that.answers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProblemEntity extends ProblemEntity {
  const _ProblemEntity(
      {@TimestampConverter() this.createdAt,
      required this.question,
      required this.latex,
      required this.problemId,
      required this.timeLimitSeconds,
      required final List<String> answers})
      : _answers = answers,
        super._();
  factory _ProblemEntity.fromJson(Map<String, dynamic> json) =>
      _$ProblemEntityFromJson(json);

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

  /// Create a copy of ProblemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProblemEntityCopyWith<_ProblemEntity> get copyWith =>
      __$ProblemEntityCopyWithImpl<_ProblemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProblemEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProblemEntity &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.latex, latex) || other.latex == latex) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.timeLimitSeconds, timeLimitSeconds) ||
                other.timeLimitSeconds == timeLimitSeconds) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
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
      const DeepCollectionEquality().hash(_answers));

  @override
  String toString() {
    return 'ProblemEntity(createdAt: $createdAt, question: $question, latex: $latex, problemId: $problemId, timeLimitSeconds: $timeLimitSeconds, answers: $answers)';
  }
}

/// @nodoc
abstract mixin class _$ProblemEntityCopyWith<$Res>
    implements $ProblemEntityCopyWith<$Res> {
  factory _$ProblemEntityCopyWith(
          _ProblemEntity value, $Res Function(_ProblemEntity) _then) =
      __$ProblemEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() DateTime? createdAt,
      String question,
      String latex,
      String problemId,
      int timeLimitSeconds,
      List<String> answers});
}

/// @nodoc
class __$ProblemEntityCopyWithImpl<$Res>
    implements _$ProblemEntityCopyWith<$Res> {
  __$ProblemEntityCopyWithImpl(this._self, this._then);

  final _ProblemEntity _self;
  final $Res Function(_ProblemEntity) _then;

  /// Create a copy of ProblemEntity
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
  }) {
    return _then(_ProblemEntity(
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
    ));
  }
}

// dart format on
