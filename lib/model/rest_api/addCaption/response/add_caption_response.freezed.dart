// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_caption_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCaptionResponse _$AddCaptionResponseFromJson(Map<String, dynamic> json) {
  return _AddCaptionResponse.fromJson(json);
}

/// @nodoc
mixin _$AddCaptionResponse {
  String get problemId => throw _privateConstructorUsedError;
  DetectedText get caption => throw _privateConstructorUsedError;

  /// Serializes this AddCaptionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCaptionResponseCopyWith<AddCaptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCaptionResponseCopyWith<$Res> {
  factory $AddCaptionResponseCopyWith(
          AddCaptionResponse value, $Res Function(AddCaptionResponse) then) =
      _$AddCaptionResponseCopyWithImpl<$Res, AddCaptionResponse>;
  @useResult
  $Res call({String problemId, DetectedText caption});

  $DetectedTextCopyWith<$Res> get caption;
}

/// @nodoc
class _$AddCaptionResponseCopyWithImpl<$Res, $Val extends AddCaptionResponse>
    implements $AddCaptionResponseCopyWith<$Res> {
  _$AddCaptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
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
              as DetectedText,
    ) as $Val);
  }

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get caption {
    return $DetectedTextCopyWith<$Res>(_value.caption, (value) {
      return _then(_value.copyWith(caption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddCaptionResponseImplCopyWith<$Res>
    implements $AddCaptionResponseCopyWith<$Res> {
  factory _$$AddCaptionResponseImplCopyWith(_$AddCaptionResponseImpl value,
          $Res Function(_$AddCaptionResponseImpl) then) =
      __$$AddCaptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String problemId, DetectedText caption});

  @override
  $DetectedTextCopyWith<$Res> get caption;
}

/// @nodoc
class __$$AddCaptionResponseImplCopyWithImpl<$Res>
    extends _$AddCaptionResponseCopyWithImpl<$Res, _$AddCaptionResponseImpl>
    implements _$$AddCaptionResponseImplCopyWith<$Res> {
  __$$AddCaptionResponseImplCopyWithImpl(_$AddCaptionResponseImpl _value,
      $Res Function(_$AddCaptionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemId = null,
    Object? caption = null,
  }) {
    return _then(_$AddCaptionResponseImpl(
      problemId: null == problemId
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCaptionResponseImpl extends _AddCaptionResponse {
  const _$AddCaptionResponseImpl(
      {required this.problemId, required this.caption})
      : super._();

  factory _$AddCaptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCaptionResponseImplFromJson(json);

  @override
  final String problemId;
  @override
  final DetectedText caption;

  @override
  String toString() {
    return 'AddCaptionResponse(problemId: $problemId, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCaptionResponseImpl &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problemId, caption);

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCaptionResponseImplCopyWith<_$AddCaptionResponseImpl> get copyWith =>
      __$$AddCaptionResponseImplCopyWithImpl<_$AddCaptionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCaptionResponseImplToJson(
      this,
    );
  }
}

abstract class _AddCaptionResponse extends AddCaptionResponse {
  const factory _AddCaptionResponse(
      {required final String problemId,
      required final DetectedText caption}) = _$AddCaptionResponseImpl;
  const _AddCaptionResponse._() : super._();

  factory _AddCaptionResponse.fromJson(Map<String, dynamic> json) =
      _$AddCaptionResponseImpl.fromJson;

  @override
  String get problemId;
  @override
  DetectedText get caption;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCaptionResponseImplCopyWith<_$AddCaptionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
