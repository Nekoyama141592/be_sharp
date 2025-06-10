// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_user_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WriteUserAnswer {
  String get answer;
  dynamic get createdAt;
  int get likeCount;
  String get problemId;
  String get uid;

  /// Create a copy of WriteUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WriteUserAnswerCopyWith<WriteUserAnswer> get copyWith =>
      _$WriteUserAnswerCopyWithImpl<WriteUserAnswer>(
          this as WriteUserAnswer, _$identity);

  /// Serializes this WriteUserAnswer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WriteUserAnswer &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      answer,
      const DeepCollectionEquality().hash(createdAt),
      likeCount,
      problemId,
      uid);

  @override
  String toString() {
    return 'WriteUserAnswer(answer: $answer, createdAt: $createdAt, likeCount: $likeCount, problemId: $problemId, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class $WriteUserAnswerCopyWith<$Res> {
  factory $WriteUserAnswerCopyWith(
          WriteUserAnswer value, $Res Function(WriteUserAnswer) _then) =
      _$WriteUserAnswerCopyWithImpl;
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      int likeCount,
      String problemId,
      String uid});
}

/// @nodoc
class _$WriteUserAnswerCopyWithImpl<$Res>
    implements $WriteUserAnswerCopyWith<$Res> {
  _$WriteUserAnswerCopyWithImpl(this._self, this._then);

  final WriteUserAnswer _self;
  final $Res Function(WriteUserAnswer) _then;

  /// Create a copy of WriteUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? likeCount = null,
    Object? problemId = null,
    Object? uid = null,
  }) {
    return _then(_self.copyWith(
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WriteUserAnswer extends WriteUserAnswer {
  const _WriteUserAnswer(
      {required this.answer,
      required this.createdAt,
      this.likeCount = 0,
      required this.problemId,
      required this.uid})
      : super._();
  factory _WriteUserAnswer.fromJson(Map<String, dynamic> json) =>
      _$WriteUserAnswerFromJson(json);

  @override
  final String answer;
  @override
  final dynamic createdAt;
  @override
  @JsonKey()
  final int likeCount;
  @override
  final String problemId;
  @override
  final String uid;

  /// Create a copy of WriteUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WriteUserAnswerCopyWith<_WriteUserAnswer> get copyWith =>
      __$WriteUserAnswerCopyWithImpl<_WriteUserAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WriteUserAnswerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WriteUserAnswer &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      answer,
      const DeepCollectionEquality().hash(createdAt),
      likeCount,
      problemId,
      uid);

  @override
  String toString() {
    return 'WriteUserAnswer(answer: $answer, createdAt: $createdAt, likeCount: $likeCount, problemId: $problemId, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class _$WriteUserAnswerCopyWith<$Res>
    implements $WriteUserAnswerCopyWith<$Res> {
  factory _$WriteUserAnswerCopyWith(
          _WriteUserAnswer value, $Res Function(_WriteUserAnswer) _then) =
      __$WriteUserAnswerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      int likeCount,
      String problemId,
      String uid});
}

/// @nodoc
class __$WriteUserAnswerCopyWithImpl<$Res>
    implements _$WriteUserAnswerCopyWith<$Res> {
  __$WriteUserAnswerCopyWithImpl(this._self, this._then);

  final _WriteUserAnswer _self;
  final $Res Function(_WriteUserAnswer) _then;

  /// Create a copy of WriteUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? likeCount = null,
    Object? problemId = null,
    Object? uid = null,
  }) {
    return _then(_WriteUserAnswer(
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
