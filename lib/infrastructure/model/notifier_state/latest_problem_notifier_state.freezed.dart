// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_problem_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatestProblemNotifierState {
  bool get isNewProblem;
  String? get problemId;

  /// Create a copy of LatestProblemNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LatestProblemNotifierStateCopyWith<LatestProblemNotifierState>
      get copyWith =>
          _$LatestProblemNotifierStateCopyWithImpl<LatestProblemNotifierState>(
              this as LatestProblemNotifierState, _$identity);

  /// Serializes this LatestProblemNotifierState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LatestProblemNotifierState &&
            (identical(other.isNewProblem, isNewProblem) ||
                other.isNewProblem == isNewProblem) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isNewProblem, problemId);

  @override
  String toString() {
    return 'LatestProblemNotifierState(isNewProblem: $isNewProblem, problemId: $problemId)';
  }
}

/// @nodoc
abstract mixin class $LatestProblemNotifierStateCopyWith<$Res> {
  factory $LatestProblemNotifierStateCopyWith(LatestProblemNotifierState value,
          $Res Function(LatestProblemNotifierState) _then) =
      _$LatestProblemNotifierStateCopyWithImpl;
  @useResult
  $Res call({bool isNewProblem, String? problemId});
}

/// @nodoc
class _$LatestProblemNotifierStateCopyWithImpl<$Res>
    implements $LatestProblemNotifierStateCopyWith<$Res> {
  _$LatestProblemNotifierStateCopyWithImpl(this._self, this._then);

  final LatestProblemNotifierState _self;
  final $Res Function(LatestProblemNotifierState) _then;

  /// Create a copy of LatestProblemNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNewProblem = null,
    Object? problemId = freezed,
  }) {
    return _then(_self.copyWith(
      isNewProblem: null == isNewProblem
          ? _self.isNewProblem
          : isNewProblem // ignore: cast_nullable_to_non_nullable
              as bool,
      problemId: freezed == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LatestProblemNotifierState extends LatestProblemNotifierState {
  const _LatestProblemNotifierState({this.isNewProblem = false, this.problemId})
      : super._();
  factory _LatestProblemNotifierState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemNotifierStateFromJson(json);

  @override
  @JsonKey()
  final bool isNewProblem;
  @override
  final String? problemId;

  /// Create a copy of LatestProblemNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LatestProblemNotifierStateCopyWith<_LatestProblemNotifierState>
      get copyWith => __$LatestProblemNotifierStateCopyWithImpl<
          _LatestProblemNotifierState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LatestProblemNotifierStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatestProblemNotifierState &&
            (identical(other.isNewProblem, isNewProblem) ||
                other.isNewProblem == isNewProblem) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isNewProblem, problemId);

  @override
  String toString() {
    return 'LatestProblemNotifierState(isNewProblem: $isNewProblem, problemId: $problemId)';
  }
}

/// @nodoc
abstract mixin class _$LatestProblemNotifierStateCopyWith<$Res>
    implements $LatestProblemNotifierStateCopyWith<$Res> {
  factory _$LatestProblemNotifierStateCopyWith(
          _LatestProblemNotifierState value,
          $Res Function(_LatestProblemNotifierState) _then) =
      __$LatestProblemNotifierStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isNewProblem, String? problemId});
}

/// @nodoc
class __$LatestProblemNotifierStateCopyWithImpl<$Res>
    implements _$LatestProblemNotifierStateCopyWith<$Res> {
  __$LatestProblemNotifierStateCopyWithImpl(this._self, this._then);

  final _LatestProblemNotifierState _self;
  final $Res Function(_LatestProblemNotifierState) _then;

  /// Create a copy of LatestProblemNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isNewProblem = null,
    Object? problemId = freezed,
  }) {
    return _then(_LatestProblemNotifierState(
      isNewProblem: null == isNewProblem
          ? _self.isNewProblem
          : isNewProblem // ignore: cast_nullable_to_non_nullable
              as bool,
      problemId: freezed == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
