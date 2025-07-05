// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_object_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteObjectResponse {
  String get base64Image;

  /// Create a copy of DeleteObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteObjectResponseCopyWith<DeleteObjectResponse> get copyWith =>
      _$DeleteObjectResponseCopyWithImpl<DeleteObjectResponse>(
          this as DeleteObjectResponse, _$identity);

  /// Serializes this DeleteObjectResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteObjectResponse &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image);

  @override
  String toString() {
    return 'DeleteObjectResponse(base64Image: $base64Image)';
  }
}

/// @nodoc
abstract mixin class $DeleteObjectResponseCopyWith<$Res> {
  factory $DeleteObjectResponseCopyWith(DeleteObjectResponse value,
          $Res Function(DeleteObjectResponse) _then) =
      _$DeleteObjectResponseCopyWithImpl;
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class _$DeleteObjectResponseCopyWithImpl<$Res>
    implements $DeleteObjectResponseCopyWith<$Res> {
  _$DeleteObjectResponseCopyWithImpl(this._self, this._then);

  final DeleteObjectResponse _self;
  final $Res Function(DeleteObjectResponse) _then;

  /// Create a copy of DeleteObjectResponse
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

/// Adds pattern-matching-related methods to [DeleteObjectResponse].
extension DeleteObjectResponsePatterns on DeleteObjectResponse {
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
    TResult Function(_DeleteObjectResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteObjectResponse() when $default != null:
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
    TResult Function(_DeleteObjectResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteObjectResponse():
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
    TResult? Function(_DeleteObjectResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteObjectResponse() when $default != null:
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
      case _DeleteObjectResponse() when $default != null:
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
      case _DeleteObjectResponse():
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
      case _DeleteObjectResponse() when $default != null:
        return $default(_that.base64Image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DeleteObjectResponse extends DeleteObjectResponse {
  const _DeleteObjectResponse({required this.base64Image}) : super._();
  factory _DeleteObjectResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteObjectResponseFromJson(json);

  @override
  final String base64Image;

  /// Create a copy of DeleteObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteObjectResponseCopyWith<_DeleteObjectResponse> get copyWith =>
      __$DeleteObjectResponseCopyWithImpl<_DeleteObjectResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeleteObjectResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteObjectResponse &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image);

  @override
  String toString() {
    return 'DeleteObjectResponse(base64Image: $base64Image)';
  }
}

/// @nodoc
abstract mixin class _$DeleteObjectResponseCopyWith<$Res>
    implements $DeleteObjectResponseCopyWith<$Res> {
  factory _$DeleteObjectResponseCopyWith(_DeleteObjectResponse value,
          $Res Function(_DeleteObjectResponse) _then) =
      __$DeleteObjectResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class __$DeleteObjectResponseCopyWithImpl<$Res>
    implements _$DeleteObjectResponseCopyWith<$Res> {
  __$DeleteObjectResponseCopyWithImpl(this._self, this._then);

  final _DeleteObjectResponse _self;
  final $Res Function(_DeleteObjectResponse) _then;

  /// Create a copy of DeleteObjectResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_DeleteObjectResponse(
      base64Image: null == base64Image
          ? _self.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
