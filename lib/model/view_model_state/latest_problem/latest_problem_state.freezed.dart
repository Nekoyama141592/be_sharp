// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_problem_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatestProblemState _$LatestProblemStateFromJson(Map<String, dynamic> json) {
  return _LatestProblemState.fromJson(json);
}

/// @nodoc
mixin _$LatestProblemState {
  ReadProblem? get problem => throw _privateConstructorUsedError;
  ReadUserAnswer? get userAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestProblemStateCopyWith<LatestProblemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestProblemStateCopyWith<$Res> {
  factory $LatestProblemStateCopyWith(
          LatestProblemState value, $Res Function(LatestProblemState) then) =
      _$LatestProblemStateCopyWithImpl<$Res, LatestProblemState>;
  @useResult
  $Res call({ReadProblem? problem, ReadUserAnswer? userAnswer});

  $ReadProblemCopyWith<$Res>? get problem;
  $ReadUserAnswerCopyWith<$Res>? get userAnswer;
}

/// @nodoc
class _$LatestProblemStateCopyWithImpl<$Res, $Val extends LatestProblemState>
    implements $LatestProblemStateCopyWith<$Res> {
  _$LatestProblemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problem = freezed,
    Object? userAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      problem: freezed == problem
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as ReadProblem?,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<$Res>? get problem {
    if (_value.problem == null) {
      return null;
    }

    return $ReadProblemCopyWith<$Res>(_value.problem!, (value) {
      return _then(_value.copyWith(problem: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<$Res>? get userAnswer {
    if (_value.userAnswer == null) {
      return null;
    }

    return $ReadUserAnswerCopyWith<$Res>(_value.userAnswer!, (value) {
      return _then(_value.copyWith(userAnswer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LatestProblemStateImplCopyWith<$Res>
    implements $LatestProblemStateCopyWith<$Res> {
  factory _$$LatestProblemStateImplCopyWith(_$LatestProblemStateImpl value,
          $Res Function(_$LatestProblemStateImpl) then) =
      __$$LatestProblemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReadProblem? problem, ReadUserAnswer? userAnswer});

  @override
  $ReadProblemCopyWith<$Res>? get problem;
  @override
  $ReadUserAnswerCopyWith<$Res>? get userAnswer;
}

/// @nodoc
class __$$LatestProblemStateImplCopyWithImpl<$Res>
    extends _$LatestProblemStateCopyWithImpl<$Res, _$LatestProblemStateImpl>
    implements _$$LatestProblemStateImplCopyWith<$Res> {
  __$$LatestProblemStateImplCopyWithImpl(_$LatestProblemStateImpl _value,
      $Res Function(_$LatestProblemStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problem = freezed,
    Object? userAnswer = freezed,
  }) {
    return _then(_$LatestProblemStateImpl(
      problem: freezed == problem
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as ReadProblem?,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as ReadUserAnswer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestProblemStateImpl extends _LatestProblemState {
  const _$LatestProblemStateImpl({this.problem, this.userAnswer}) : super._();

  factory _$LatestProblemStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestProblemStateImplFromJson(json);

  @override
  final ReadProblem? problem;
  @override
  final ReadUserAnswer? userAnswer;

  @override
  String toString() {
    return 'LatestProblemState(problem: $problem, userAnswer: $userAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestProblemStateImpl &&
            (identical(other.problem, problem) || other.problem == problem) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, problem, userAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestProblemStateImplCopyWith<_$LatestProblemStateImpl> get copyWith =>
      __$$LatestProblemStateImplCopyWithImpl<_$LatestProblemStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestProblemStateImplToJson(
      this,
    );
  }
}

abstract class _LatestProblemState extends LatestProblemState {
  const factory _LatestProblemState(
      {final ReadProblem? problem,
      final ReadUserAnswer? userAnswer}) = _$LatestProblemStateImpl;
  const _LatestProblemState._() : super._();

  factory _LatestProblemState.fromJson(Map<String, dynamic> json) =
      _$LatestProblemStateImpl.fromJson;

  @override
  ReadProblem? get problem;
  @override
  ReadUserAnswer? get userAnswer;
  @override
  @JsonKey(ignore: true)
  _$$LatestProblemStateImplCopyWith<_$LatestProblemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
