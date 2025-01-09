// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteProblem _$WriteProblemFromJson(Map<String, dynamic> json) {
  return _WriteProblem.fromJson(json);
}

/// @nodoc
mixin _$WriteProblem {
  String get question => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  int get answerCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteProblemCopyWith<WriteProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteProblemCopyWith<$Res> {
  factory $WriteProblemCopyWith(
          WriteProblem value, $Res Function(WriteProblem) then) =
      _$WriteProblemCopyWithImpl<$Res, WriteProblem>;
  @useResult
  $Res call({String question, dynamic createdAt, int answerCount});
}

/// @nodoc
class _$WriteProblemCopyWithImpl<$Res, $Val extends WriteProblem>
    implements $WriteProblemCopyWith<$Res> {
  _$WriteProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? createdAt = freezed,
    Object? answerCount = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteProblemImplCopyWith<$Res>
    implements $WriteProblemCopyWith<$Res> {
  factory _$$WriteProblemImplCopyWith(
          _$WriteProblemImpl value, $Res Function(_$WriteProblemImpl) then) =
      __$$WriteProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, dynamic createdAt, int answerCount});
}

/// @nodoc
class __$$WriteProblemImplCopyWithImpl<$Res>
    extends _$WriteProblemCopyWithImpl<$Res, _$WriteProblemImpl>
    implements _$$WriteProblemImplCopyWith<$Res> {
  __$$WriteProblemImplCopyWithImpl(
      _$WriteProblemImpl _value, $Res Function(_$WriteProblemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? createdAt = freezed,
    Object? answerCount = null,
  }) {
    return _then(_$WriteProblemImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteProblemImpl extends _WriteProblem {
  const _$WriteProblemImpl(
      {required this.question, required this.createdAt, this.answerCount = 0})
      : super._();

  factory _$WriteProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteProblemImplFromJson(json);

  @override
  final String question;
  @override
  final dynamic createdAt;
  @override
  @JsonKey()
  final int answerCount;

  @override
  String toString() {
    return 'WriteProblem(question: $question, createdAt: $createdAt, answerCount: $answerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteProblemImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question,
      const DeepCollectionEquality().hash(createdAt), answerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteProblemImplCopyWith<_$WriteProblemImpl> get copyWith =>
      __$$WriteProblemImplCopyWithImpl<_$WriteProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteProblemImplToJson(
      this,
    );
  }
}

abstract class _WriteProblem extends WriteProblem {
  const factory _WriteProblem(
      {required final String question,
      required final dynamic createdAt,
      final int answerCount}) = _$WriteProblemImpl;
  const _WriteProblem._() : super._();

  factory _WriteProblem.fromJson(Map<String, dynamic> json) =
      _$WriteProblemImpl.fromJson;

  @override
  String get question;
  @override
  dynamic get createdAt;
  @override
  int get answerCount;
  @override
  @JsonKey(ignore: true)
  _$$WriteProblemImplCopyWith<_$WriteProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
