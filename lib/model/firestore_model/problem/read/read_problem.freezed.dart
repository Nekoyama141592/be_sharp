// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadProblem _$ReadProblemFromJson(Map<String, dynamic> json) {
  return _ReadProblem.fromJson(json);
}

/// @nodoc
mixin _$ReadProblem {
  String get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadProblemCopyWith<ReadProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadProblemCopyWith<$Res> {
  factory $ReadProblemCopyWith(
          ReadProblem value, $Res Function(ReadProblem) then) =
      _$ReadProblemCopyWithImpl<$Res, ReadProblem>;
  @useResult
  $Res call({String question});
}

/// @nodoc
class _$ReadProblemCopyWithImpl<$Res, $Val extends ReadProblem>
    implements $ReadProblemCopyWith<$Res> {
  _$ReadProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadProblemImplCopyWith<$Res>
    implements $ReadProblemCopyWith<$Res> {
  factory _$$ReadProblemImplCopyWith(
          _$ReadProblemImpl value, $Res Function(_$ReadProblemImpl) then) =
      __$$ReadProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question});
}

/// @nodoc
class __$$ReadProblemImplCopyWithImpl<$Res>
    extends _$ReadProblemCopyWithImpl<$Res, _$ReadProblemImpl>
    implements _$$ReadProblemImplCopyWith<$Res> {
  __$$ReadProblemImplCopyWithImpl(
      _$ReadProblemImpl _value, $Res Function(_$ReadProblemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$ReadProblemImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadProblemImpl extends _ReadProblem {
  const _$ReadProblemImpl({required this.question}) : super._();

  factory _$ReadProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadProblemImplFromJson(json);

  @override
  final String question;

  @override
  String toString() {
    return 'ReadProblem(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadProblemImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadProblemImplCopyWith<_$ReadProblemImpl> get copyWith =>
      __$$ReadProblemImplCopyWithImpl<_$ReadProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadProblemImplToJson(
      this,
    );
  }
}

abstract class _ReadProblem extends ReadProblem {
  const factory _ReadProblem({required final String question}) =
      _$ReadProblemImpl;
  const _ReadProblem._() : super._();

  factory _ReadProblem.fromJson(Map<String, dynamic> json) =
      _$ReadProblemImpl.fromJson;

  @override
  String get question;
  @override
  @JsonKey(ignore: true)
  _$$ReadProblemImplCopyWith<_$ReadProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
