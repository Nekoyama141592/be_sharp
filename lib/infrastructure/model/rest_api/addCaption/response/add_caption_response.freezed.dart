// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [AddCaptionResponse].
extension AddCaptionResponsePatterns on AddCaptionResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AddCaptionResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddCaptionResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AddCaptionResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AddCaptionResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String problemId, DetectedText caption)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddCaptionResponse() when $default != null:
        return $default(_that.problemId, _that.caption);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String problemId, DetectedText caption) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionResponse():
        return $default(_that.problemId, _that.caption);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String problemId, DetectedText caption)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionResponse() when $default != null:
        return $default(_that.problemId, _that.caption);
      case _:
        return null;
    }
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
