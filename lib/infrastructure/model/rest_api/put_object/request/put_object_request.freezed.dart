// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'put_object_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PutObjectRequest {
  String get base64Image;
  String get object;

  /// Create a copy of PutObjectRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PutObjectRequestCopyWith<PutObjectRequest> get copyWith =>
      _$PutObjectRequestCopyWithImpl<PutObjectRequest>(
          this as PutObjectRequest, _$identity);

  /// Serializes this PutObjectRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PutObjectRequest &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image, object);

  @override
  String toString() {
    return 'PutObjectRequest(base64Image: $base64Image, object: $object)';
  }
}

/// @nodoc
abstract mixin class $PutObjectRequestCopyWith<$Res> {
  factory $PutObjectRequestCopyWith(
          PutObjectRequest value, $Res Function(PutObjectRequest) _then) =
      _$PutObjectRequestCopyWithImpl;
  @useResult
  $Res call({String base64Image, String object});
}

/// @nodoc
class _$PutObjectRequestCopyWithImpl<$Res>
    implements $PutObjectRequestCopyWith<$Res> {
  _$PutObjectRequestCopyWithImpl(this._self, this._then);

  final PutObjectRequest _self;
  final $Res Function(PutObjectRequest) _then;

  /// Create a copy of PutObjectRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
    Object? object = null,
  }) {
    return _then(_self.copyWith(
      base64Image: null == base64Image
          ? _self.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PutObjectRequest].
extension PutObjectRequestPatterns on PutObjectRequest {
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
    TResult Function(_PutObjectRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PutObjectRequest() when $default != null:
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
    TResult Function(_PutObjectRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectRequest():
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
    TResult? Function(_PutObjectRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectRequest() when $default != null:
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
    TResult Function(String base64Image, String object)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PutObjectRequest() when $default != null:
        return $default(_that.base64Image, _that.object);
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
    TResult Function(String base64Image, String object) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectRequest():
        return $default(_that.base64Image, _that.object);
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
    TResult? Function(String base64Image, String object)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PutObjectRequest() when $default != null:
        return $default(_that.base64Image, _that.object);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PutObjectRequest extends PutObjectRequest {
  const _PutObjectRequest({required this.base64Image, required this.object})
      : super._();
  factory _PutObjectRequest.fromJson(Map<String, dynamic> json) =>
      _$PutObjectRequestFromJson(json);

  @override
  final String base64Image;
  @override
  final String object;

  /// Create a copy of PutObjectRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PutObjectRequestCopyWith<_PutObjectRequest> get copyWith =>
      __$PutObjectRequestCopyWithImpl<_PutObjectRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PutObjectRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PutObjectRequest &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image, object);

  @override
  String toString() {
    return 'PutObjectRequest(base64Image: $base64Image, object: $object)';
  }
}

/// @nodoc
abstract mixin class _$PutObjectRequestCopyWith<$Res>
    implements $PutObjectRequestCopyWith<$Res> {
  factory _$PutObjectRequestCopyWith(
          _PutObjectRequest value, $Res Function(_PutObjectRequest) _then) =
      __$PutObjectRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String base64Image, String object});
}

/// @nodoc
class __$PutObjectRequestCopyWithImpl<$Res>
    implements _$PutObjectRequestCopyWith<$Res> {
  __$PutObjectRequestCopyWithImpl(this._self, this._then);

  final _PutObjectRequest _self;
  final $Res Function(_PutObjectRequest) _then;

  /// Create a copy of PutObjectRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? base64Image = null,
    Object? object = null,
  }) {
    return _then(_PutObjectRequest(
      base64Image: null == base64Image
          ? _self.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
