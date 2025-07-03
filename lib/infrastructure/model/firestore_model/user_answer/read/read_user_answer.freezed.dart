// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_user_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadUserAnswer {
  String get answer;
  dynamic get createdAt;
  String get problemId;
  DetectedText? get caption;
  String get uid;

  /// Create a copy of ReadUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadUserAnswerCopyWith<ReadUserAnswer> get copyWith =>
      _$ReadUserAnswerCopyWithImpl<ReadUserAnswer>(
          this as ReadUserAnswer, _$identity);

  /// Serializes this ReadUserAnswer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadUserAnswer &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, answer,
      const DeepCollectionEquality().hash(createdAt), problemId, caption, uid);

  @override
  String toString() {
    return 'ReadUserAnswer(answer: $answer, createdAt: $createdAt, problemId: $problemId, caption: $caption, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class $ReadUserAnswerCopyWith<$Res> {
  factory $ReadUserAnswerCopyWith(
          ReadUserAnswer value, $Res Function(ReadUserAnswer) _then) =
      _$ReadUserAnswerCopyWithImpl;
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      String problemId,
      DetectedText? caption,
      String uid});

  $DetectedTextCopyWith<$Res>? get caption;
}

/// @nodoc
class _$ReadUserAnswerCopyWithImpl<$Res>
    implements $ReadUserAnswerCopyWith<$Res> {
  _$ReadUserAnswerCopyWithImpl(this._self, this._then);

  final ReadUserAnswer _self;
  final $Res Function(ReadUserAnswer) _then;

  /// Create a copy of ReadUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? caption = freezed,
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
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ReadUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $DetectedTextCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ReadUserAnswer extends ReadUserAnswer {
  const _ReadUserAnswer(
      {required this.answer,
      required this.createdAt,
      required this.problemId,
      required this.caption,
      required this.uid})
      : super._();
  factory _ReadUserAnswer.fromJson(Map<String, dynamic> json) =>
      _$ReadUserAnswerFromJson(json);

  @override
  final String answer;
  @override
  final dynamic createdAt;
  @override
  final String problemId;
  @override
  final DetectedText? caption;
  @override
  final String uid;

  /// Create a copy of ReadUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadUserAnswerCopyWith<_ReadUserAnswer> get copyWith =>
      __$ReadUserAnswerCopyWithImpl<_ReadUserAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReadUserAnswerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadUserAnswer &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, answer,
      const DeepCollectionEquality().hash(createdAt), problemId, caption, uid);

  @override
  String toString() {
    return 'ReadUserAnswer(answer: $answer, createdAt: $createdAt, problemId: $problemId, caption: $caption, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class _$ReadUserAnswerCopyWith<$Res>
    implements $ReadUserAnswerCopyWith<$Res> {
  factory _$ReadUserAnswerCopyWith(
          _ReadUserAnswer value, $Res Function(_ReadUserAnswer) _then) =
      __$ReadUserAnswerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      String problemId,
      DetectedText? caption,
      String uid});

  @override
  $DetectedTextCopyWith<$Res>? get caption;
}

/// @nodoc
class __$ReadUserAnswerCopyWithImpl<$Res>
    implements _$ReadUserAnswerCopyWith<$Res> {
  __$ReadUserAnswerCopyWithImpl(this._self, this._then);

  final _ReadUserAnswer _self;
  final $Res Function(_ReadUserAnswer) _then;

  /// Create a copy of ReadUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? caption = freezed,
    Object? uid = null,
  }) {
    return _then(_ReadUserAnswer(
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ReadUserAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $DetectedTextCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

// dart format on
