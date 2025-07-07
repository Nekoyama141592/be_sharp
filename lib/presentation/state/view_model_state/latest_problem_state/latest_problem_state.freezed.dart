// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_problem_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatestProblemState {
  ProblemEntity? get problem;
  UserAnswerEntity? get userAnswer;

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LatestProblemStateCopyWith<LatestProblemState> get copyWith =>
      _$LatestProblemStateCopyWithImpl<LatestProblemState>(
          this as LatestProblemState, _$identity);

  /// Serializes this LatestProblemState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LatestProblemState &&
            (identical(other.problem, problem) || other.problem == problem) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problem, userAnswer);

  @override
  String toString() {
    return 'LatestProblemState(problem: $problem, userAnswer: $userAnswer)';
  }
}

/// @nodoc
abstract mixin class $LatestProblemStateCopyWith<$Res> {
  factory $LatestProblemStateCopyWith(
          LatestProblemState value, $Res Function(LatestProblemState) _then) =
      _$LatestProblemStateCopyWithImpl;
  @useResult
  $Res call({ProblemEntity? problem, UserAnswerEntity? userAnswer});

  $ProblemEntityCopyWith<$Res>? get problem;
  $UserAnswerEntityCopyWith<$Res>? get userAnswer;
}

/// @nodoc
class _$LatestProblemStateCopyWithImpl<$Res>
    implements $LatestProblemStateCopyWith<$Res> {
  _$LatestProblemStateCopyWithImpl(this._self, this._then);

  final LatestProblemState _self;
  final $Res Function(LatestProblemState) _then;

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problem = freezed,
    Object? userAnswer = freezed,
  }) {
    return _then(_self.copyWith(
      problem: freezed == problem
          ? _self.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as ProblemEntity?,
      userAnswer: freezed == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as UserAnswerEntity?,
    ));
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProblemEntityCopyWith<$Res>? get problem {
    if (_self.problem == null) {
      return null;
    }

    return $ProblemEntityCopyWith<$Res>(_self.problem!, (value) {
      return _then(_self.copyWith(problem: value));
    });
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAnswerEntityCopyWith<$Res>? get userAnswer {
    if (_self.userAnswer == null) {
      return null;
    }

    return $UserAnswerEntityCopyWith<$Res>(_self.userAnswer!, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LatestProblemState].
extension LatestProblemStatePatterns on LatestProblemState {
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
    TResult Function(_LatestProblemState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LatestProblemState() when $default != null:
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
    TResult Function(_LatestProblemState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LatestProblemState():
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
    TResult? Function(_LatestProblemState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LatestProblemState() when $default != null:
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
    TResult Function(ProblemEntity? problem, UserAnswerEntity? userAnswer)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LatestProblemState() when $default != null:
        return $default(_that.problem, _that.userAnswer);
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
    TResult Function(ProblemEntity? problem, UserAnswerEntity? userAnswer)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LatestProblemState():
        return $default(_that.problem, _that.userAnswer);
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
    TResult? Function(ProblemEntity? problem, UserAnswerEntity? userAnswer)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LatestProblemState() when $default != null:
        return $default(_that.problem, _that.userAnswer);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LatestProblemState extends LatestProblemState {
  const _LatestProblemState({this.problem, this.userAnswer}) : super._();
  factory _LatestProblemState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemStateFromJson(json);

  @override
  final ProblemEntity? problem;
  @override
  final UserAnswerEntity? userAnswer;

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LatestProblemStateCopyWith<_LatestProblemState> get copyWith =>
      __$LatestProblemStateCopyWithImpl<_LatestProblemState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LatestProblemStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatestProblemState &&
            (identical(other.problem, problem) || other.problem == problem) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problem, userAnswer);

  @override
  String toString() {
    return 'LatestProblemState(problem: $problem, userAnswer: $userAnswer)';
  }
}

/// @nodoc
abstract mixin class _$LatestProblemStateCopyWith<$Res>
    implements $LatestProblemStateCopyWith<$Res> {
  factory _$LatestProblemStateCopyWith(
          _LatestProblemState value, $Res Function(_LatestProblemState) _then) =
      __$LatestProblemStateCopyWithImpl;
  @override
  @useResult
  $Res call({ProblemEntity? problem, UserAnswerEntity? userAnswer});

  @override
  $ProblemEntityCopyWith<$Res>? get problem;
  @override
  $UserAnswerEntityCopyWith<$Res>? get userAnswer;
}

/// @nodoc
class __$LatestProblemStateCopyWithImpl<$Res>
    implements _$LatestProblemStateCopyWith<$Res> {
  __$LatestProblemStateCopyWithImpl(this._self, this._then);

  final _LatestProblemState _self;
  final $Res Function(_LatestProblemState) _then;

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? problem = freezed,
    Object? userAnswer = freezed,
  }) {
    return _then(_LatestProblemState(
      problem: freezed == problem
          ? _self.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as ProblemEntity?,
      userAnswer: freezed == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as UserAnswerEntity?,
    ));
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProblemEntityCopyWith<$Res>? get problem {
    if (_self.problem == null) {
      return null;
    }

    return $ProblemEntityCopyWith<$Res>(_self.problem!, (value) {
      return _then(_self.copyWith(problem: value));
    });
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAnswerEntityCopyWith<$Res>? get userAnswer {
    if (_self.userAnswer == null) {
      return null;
    }

    return $UserAnswerEntityCopyWith<$Res>(_self.userAnswer!, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

// dart format on
