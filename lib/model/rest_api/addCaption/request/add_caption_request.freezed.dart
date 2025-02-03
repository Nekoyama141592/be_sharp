// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_caption_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCaptionRequest _$AddCaptionRequestFromJson(Map<String, dynamic> json) {
  return _AddCaptionRequest.fromJson(json);
}

/// @nodoc
mixin _$AddCaptionRequest {
  String get problemId => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCaptionRequestCopyWith<AddCaptionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCaptionRequestCopyWith<$Res> {
  factory $AddCaptionRequestCopyWith(
          AddCaptionRequest value, $Res Function(AddCaptionRequest) then) =
      _$AddCaptionRequestCopyWithImpl<$Res, AddCaptionRequest>;
  @useResult
  $Res call({String problemId, String caption});
}

/// @nodoc
class _$AddCaptionRequestCopyWithImpl<$Res, $Val extends AddCaptionRequest>
    implements $AddCaptionRequestCopyWith<$Res> {
  _$AddCaptionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemId = null,
    Object? caption = null,
  }) {
    return _then(_value.copyWith(
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCaptionRequestImplCopyWith<$Res>
    implements $AddCaptionRequestCopyWith<$Res> {
  factory _$$AddCaptionRequestImplCopyWith(_$AddCaptionRequestImpl value,
          $Res Function(_$AddCaptionRequestImpl) then) =
      __$$AddCaptionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String problemId, String caption});
}

/// @nodoc
class __$$AddCaptionRequestImplCopyWithImpl<$Res>
    extends _$AddCaptionRequestCopyWithImpl<$Res, _$AddCaptionRequestImpl>
    implements _$$AddCaptionRequestImplCopyWith<$Res> {
  __$$AddCaptionRequestImplCopyWithImpl(_$AddCaptionRequestImpl _value,
      $Res Function(_$AddCaptionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemId = null,
    Object? caption = null,
  }) {
    return _then(_$AddCaptionRequestImpl(
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCaptionRequestImpl extends _AddCaptionRequest {
  const _$AddCaptionRequestImpl(
      {required this.problemId, required this.caption})
      : super._();

  factory _$AddCaptionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCaptionRequestImplFromJson(json);

  @override
  final String problemId;
  @override
  final String caption;

  @override
  String toString() {
    return 'AddCaptionRequest(problemId: $problemId, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCaptionRequestImpl &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, problemId, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCaptionRequestImplCopyWith<_$AddCaptionRequestImpl> get copyWith =>
      __$$AddCaptionRequestImplCopyWithImpl<_$AddCaptionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCaptionRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCaptionRequest extends AddCaptionRequest {
  const factory _AddCaptionRequest(
      {required final String problemId,
      required final String caption}) = _$AddCaptionRequestImpl;
  const _AddCaptionRequest._() : super._();

  factory _AddCaptionRequest.fromJson(Map<String, dynamic> json) =
      _$AddCaptionRequestImpl.fromJson;

  @override
  String get problemId;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$AddCaptionRequestImplCopyWith<_$AddCaptionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
