// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_caption_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCaptionResponse {
  String get problemId;
  DetectedText get caption;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddCaptionResponseCopyWith<AddCaptionResponse> get copyWith =>
      _$AddCaptionResponseCopyWithImpl<AddCaptionResponse>(
          this as AddCaptionResponse, _$identity);

  /// Serializes this AddCaptionResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddCaptionResponse &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problemId, caption);

  @override
  String toString() {
    return 'AddCaptionResponse(problemId: $problemId, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class $AddCaptionResponseCopyWith<$Res> {
  factory $AddCaptionResponseCopyWith(
          AddCaptionResponse value, $Res Function(AddCaptionResponse) _then) =
      _$AddCaptionResponseCopyWithImpl;
  @useResult
  $Res call({String problemId, DetectedText caption});

  $DetectedTextCopyWith<$Res> get caption;
}

/// @nodoc
class _$AddCaptionResponseCopyWithImpl<$Res>
    implements $AddCaptionResponseCopyWith<$Res> {
  _$AddCaptionResponseCopyWithImpl(this._self, this._then);

  final AddCaptionResponse _self;
  final $Res Function(AddCaptionResponse) _then;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemId = null,
    Object? caption = null,
  }) {
    return _then(_self.copyWith(
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText,
    ));
  }

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get caption {
    return $DetectedTextCopyWith<$Res>(_self.caption, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AddCaptionResponse extends AddCaptionResponse {
  const _AddCaptionResponse({required this.problemId, required this.caption})
      : super._();
  factory _AddCaptionResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCaptionResponseFromJson(json);

  @override
  final String problemId;
  @override
  final DetectedText caption;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddCaptionResponseCopyWith<_AddCaptionResponse> get copyWith =>
      __$AddCaptionResponseCopyWithImpl<_AddCaptionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddCaptionResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCaptionResponse &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problemId, caption);

  @override
  String toString() {
    return 'AddCaptionResponse(problemId: $problemId, caption: $caption)';
  }
}

/// @nodoc
abstract mixin class _$AddCaptionResponseCopyWith<$Res>
    implements $AddCaptionResponseCopyWith<$Res> {
  factory _$AddCaptionResponseCopyWith(
          _AddCaptionResponse value, $Res Function(_AddCaptionResponse) _then) =
      __$AddCaptionResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String problemId, DetectedText caption});

  @override
  $DetectedTextCopyWith<$Res> get caption;
}

/// @nodoc
class __$AddCaptionResponseCopyWithImpl<$Res>
    implements _$AddCaptionResponseCopyWith<$Res> {
  __$AddCaptionResponseCopyWithImpl(this._self, this._then);

  final _AddCaptionResponse _self;
  final $Res Function(_AddCaptionResponse) _then;

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? problemId = null,
    Object? caption = null,
  }) {
    return _then(_AddCaptionResponse(
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedText,
    ));
  }

  /// Create a copy of AddCaptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get caption {
    return $DetectedTextCopyWith<$Res>(_self.caption, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

// dart format on
