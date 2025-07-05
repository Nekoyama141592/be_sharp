// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'put_object_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PutObjectResponse {
  String get base64Image;

  /// Create a copy of PutObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PutObjectResponseCopyWith<PutObjectResponse> get copyWith =>
      _$PutObjectResponseCopyWithImpl<PutObjectResponse>(
          this as PutObjectResponse, _$identity);

  /// Serializes this PutObjectResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PutObjectResponse &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image);

  @override
  String toString() {
    return 'PutObjectResponse(base64Image: $base64Image)';
  }
}

/// @nodoc
abstract mixin class $PutObjectResponseCopyWith<$Res> {
  factory $PutObjectResponseCopyWith(
          PutObjectResponse value, $Res Function(PutObjectResponse) _then) =
      _$PutObjectResponseCopyWithImpl;
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class _$PutObjectResponseCopyWithImpl<$Res>
    implements $PutObjectResponseCopyWith<$Res> {
  _$PutObjectResponseCopyWithImpl(this._self, this._then);

  final PutObjectResponse _self;
  final $Res Function(PutObjectResponse) _then;

  /// Create a copy of PutObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_self.copyWith(
      base64Image: null == base64Image
          ? _self.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PutObjectResponse].
extension PutObjectResponsePatterns on PutObjectResponse {
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
    TResult Function(_PutObjectResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PutObjectResponse() when $default != null:
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
    TResult Function(_PutObjectResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectResponse():
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
    TResult? Function(_PutObjectResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectResponse() when $default != null:
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
    TResult Function(String base64Image)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PutObjectResponse() when $default != null:
        return $default(_that.base64Image);
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
    TResult Function(String base64Image) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectResponse():
        return $default(_that.base64Image);
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
    TResult? Function(String base64Image)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectResponse() when $default != null:
        return $default(_that.base64Image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PutObjectResponse extends PutObjectResponse {
  const _PutObjectResponse({required this.base64Image}) : super._();
  factory _PutObjectResponse.fromJson(Map<String, dynamic> json) =>
      _$PutObjectResponseFromJson(json);

  @override
  final String base64Image;

  /// Create a copy of PutObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PutObjectResponseCopyWith<_PutObjectResponse> get copyWith =>
      __$PutObjectResponseCopyWithImpl<_PutObjectResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PutObjectResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PutObjectResponse &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image);

  @override
  String toString() {
    return 'PutObjectResponse(base64Image: $base64Image)';
  }
}

/// @nodoc
abstract mixin class _$PutObjectResponseCopyWith<$Res>
    implements $PutObjectResponseCopyWith<$Res> {
  factory _$PutObjectResponseCopyWith(
          _PutObjectResponse value, $Res Function(_PutObjectResponse) _then) =
      __$PutObjectResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class __$PutObjectResponseCopyWithImpl<$Res>
    implements _$PutObjectResponseCopyWith<$Res> {
  __$PutObjectResponseCopyWithImpl(this._self, this._then);

  final _PutObjectResponse _self;
  final $Res Function(_PutObjectResponse) _then;

  /// Create a copy of PutObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_PutObjectResponse(
      base64Image: null == base64Image
          ? _self.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
