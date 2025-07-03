// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  ReadProblem? get problem;
  ReadUserAnswer? get userAnswer;

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
  $Res call({ReadProblem? problem, ReadUserAnswer? userAnswer});

  $ReadProblemCopyWith<$Res>? get problem;
  $ReadUserAnswerCopyWith<$Res>? get userAnswer;
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
              as ReadProblem?,
      userAnswer: freezed == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer?,
    ));
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<$Res>? get problem {
    if (_self.problem == null) {
      return null;
    }

    return $ReadProblemCopyWith<$Res>(_self.problem!, (value) {
      return _then(_self.copyWith(problem: value));
    });
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<$Res>? get userAnswer {
    if (_self.userAnswer == null) {
      return null;
    }

    return $ReadUserAnswerCopyWith<$Res>(_self.userAnswer!, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LatestProblemState extends LatestProblemState {
  const _LatestProblemState({this.problem, this.userAnswer}) : super._();
  factory _LatestProblemState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemStateFromJson(json);

  @override
  final ReadProblem? problem;
  @override
  final ReadUserAnswer? userAnswer;

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
  $Res call({ReadProblem? problem, ReadUserAnswer? userAnswer});

  @override
  $ReadProblemCopyWith<$Res>? get problem;
  @override
  $ReadUserAnswerCopyWith<$Res>? get userAnswer;
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
              as ReadProblem?,
      userAnswer: freezed == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer?,
    ));
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<$Res>? get problem {
    if (_self.problem == null) {
      return null;
    }

    return $ReadProblemCopyWith<$Res>(_self.problem!, (value) {
      return _then(_self.copyWith(problem: value));
    });
  }

  /// Create a copy of LatestProblemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<$Res>? get userAnswer {
    if (_self.userAnswer == null) {
      return null;
    }

    return $ReadUserAnswerCopyWith<$Res>(_self.userAnswer!, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

// dart format on
