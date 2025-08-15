// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserResponse {
  ModeratedImage? get moderatedImage;
  DetectedText get detectedBio;
  DetectedText get detectedUserName;

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserResponseCopyWith<UpdateUserResponse> get copyWith =>
      _$UpdateUserResponseCopyWithImpl<UpdateUserResponse>(
          this as UpdateUserResponse, _$identity);

  /// Serializes this UpdateUserResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserResponse &&
            (identical(other.moderatedImage, moderatedImage) ||
                other.moderatedImage == moderatedImage) &&
            (identical(other.detectedBio, detectedBio) ||
                other.detectedBio == detectedBio) &&
            (identical(other.detectedUserName, detectedUserName) ||
                other.detectedUserName == detectedUserName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, moderatedImage, detectedBio, detectedUserName);

  @override
  String toString() {
    return 'UpdateUserResponse(moderatedImage: $moderatedImage, detectedBio: $detectedBio, detectedUserName: $detectedUserName)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserResponseCopyWith<$Res> {
  factory $UpdateUserResponseCopyWith(
          UpdateUserResponse value, $Res Function(UpdateUserResponse) _then) =
      _$UpdateUserResponseCopyWithImpl;
  @useResult
  $Res call(
      {ModeratedImage? moderatedImage,
      DetectedText detectedBio,
      DetectedText detectedUserName});

  $ModeratedImageCopyWith<$Res>? get moderatedImage;
  $DetectedTextCopyWith<$Res> get detectedBio;
  $DetectedTextCopyWith<$Res> get detectedUserName;
}

/// @nodoc
class _$UpdateUserResponseCopyWithImpl<$Res>
    implements $UpdateUserResponseCopyWith<$Res> {
  _$UpdateUserResponseCopyWithImpl(this._self, this._then);

  final UpdateUserResponse _self;
  final $Res Function(UpdateUserResponse) _then;

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moderatedImage = freezed,
    Object? detectedBio = null,
    Object? detectedUserName = null,
  }) {
    return _then(_self.copyWith(
      moderatedImage: freezed == moderatedImage
          ? _self.moderatedImage
          : moderatedImage // ignore: cast_nullable_to_non_nullable
              as ModeratedImage?,
      detectedBio: null == detectedBio
          ? _self.detectedBio
          : detectedBio // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      detectedUserName: null == detectedUserName
          ? _self.detectedUserName
          : detectedUserName // ignore: cast_nullable_to_non_nullable
              as DetectedText,
    ));
  }

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModeratedImageCopyWith<$Res>? get moderatedImage {
    if (_self.moderatedImage == null) {
      return null;
    }

    return $ModeratedImageCopyWith<$Res>(_self.moderatedImage!, (value) {
      return _then(_self.copyWith(moderatedImage: value));
    });
  }

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get detectedBio {
    return $DetectedTextCopyWith<$Res>(_self.detectedBio, (value) {
      return _then(_self.copyWith(detectedBio: value));
    });
  }

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get detectedUserName {
    return $DetectedTextCopyWith<$Res>(_self.detectedUserName, (value) {
      return _then(_self.copyWith(detectedUserName: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UpdateUserResponse].
extension UpdateUserResponsePatterns on UpdateUserResponse {
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
    TResult Function(_UpdateUserResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserResponse() when $default != null:
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
    TResult Function(_UpdateUserResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserResponse():
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
    TResult? Function(_UpdateUserResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserResponse() when $default != null:
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
    TResult Function(ModeratedImage? moderatedImage, DetectedText detectedBio,
            DetectedText detectedUserName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserResponse() when $default != null:
        return $default(
            _that.moderatedImage, _that.detectedBio, _that.detectedUserName);
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
    TResult Function(ModeratedImage? moderatedImage, DetectedText detectedBio,
            DetectedText detectedUserName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserResponse():
        return $default(
            _that.moderatedImage, _that.detectedBio, _that.detectedUserName);
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
    TResult? Function(ModeratedImage? moderatedImage, DetectedText detectedBio,
            DetectedText detectedUserName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserResponse() when $default != null:
        return $default(
            _that.moderatedImage, _that.detectedBio, _that.detectedUserName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateUserResponse implements UpdateUserResponse {
  const _UpdateUserResponse(
      {this.moderatedImage,
      required this.detectedBio,
      required this.detectedUserName});
  factory _UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);

  @override
  final ModeratedImage? moderatedImage;
  @override
  final DetectedText detectedBio;
  @override
  final DetectedText detectedUserName;

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserResponseCopyWith<_UpdateUserResponse> get copyWith =>
      __$UpdateUserResponseCopyWithImpl<_UpdateUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateUserResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserResponse &&
            (identical(other.moderatedImage, moderatedImage) ||
                other.moderatedImage == moderatedImage) &&
            (identical(other.detectedBio, detectedBio) ||
                other.detectedBio == detectedBio) &&
            (identical(other.detectedUserName, detectedUserName) ||
                other.detectedUserName == detectedUserName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, moderatedImage, detectedBio, detectedUserName);

  @override
  String toString() {
    return 'UpdateUserResponse(moderatedImage: $moderatedImage, detectedBio: $detectedBio, detectedUserName: $detectedUserName)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserResponseCopyWith<$Res>
    implements $UpdateUserResponseCopyWith<$Res> {
  factory _$UpdateUserResponseCopyWith(
          _UpdateUserResponse value, $Res Function(_UpdateUserResponse) _then) =
      __$UpdateUserResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ModeratedImage? moderatedImage,
      DetectedText detectedBio,
      DetectedText detectedUserName});

  @override
  $ModeratedImageCopyWith<$Res>? get moderatedImage;
  @override
  $DetectedTextCopyWith<$Res> get detectedBio;
  @override
  $DetectedTextCopyWith<$Res> get detectedUserName;
}

/// @nodoc
class __$UpdateUserResponseCopyWithImpl<$Res>
    implements _$UpdateUserResponseCopyWith<$Res> {
  __$UpdateUserResponseCopyWithImpl(this._self, this._then);

  final _UpdateUserResponse _self;
  final $Res Function(_UpdateUserResponse) _then;

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? moderatedImage = freezed,
    Object? detectedBio = null,
    Object? detectedUserName = null,
  }) {
    return _then(_UpdateUserResponse(
      moderatedImage: freezed == moderatedImage
          ? _self.moderatedImage
          : moderatedImage // ignore: cast_nullable_to_non_nullable
              as ModeratedImage?,
      detectedBio: null == detectedBio
          ? _self.detectedBio
          : detectedBio // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      detectedUserName: null == detectedUserName
          ? _self.detectedUserName
          : detectedUserName // ignore: cast_nullable_to_non_nullable
              as DetectedText,
    ));
  }

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModeratedImageCopyWith<$Res>? get moderatedImage {
    if (_self.moderatedImage == null) {
      return null;
    }

    return $ModeratedImageCopyWith<$Res>(_self.moderatedImage!, (value) {
      return _then(_self.copyWith(moderatedImage: value));
    });
  }

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get detectedBio {
    return $DetectedTextCopyWith<$Res>(_self.detectedBio, (value) {
      return _then(_self.copyWith(detectedBio: value));
    });
  }

  /// Create a copy of UpdateUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get detectedUserName {
    return $DetectedTextCopyWith<$Res>(_self.detectedUserName, (value) {
      return _then(_self.copyWith(detectedUserName: value));
    });
  }
}

// dart format on
