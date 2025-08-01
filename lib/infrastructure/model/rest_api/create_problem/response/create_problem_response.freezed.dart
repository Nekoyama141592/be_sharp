// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_problem_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProblemResponse {
  int get status;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProblemResponseCopyWith<CreateProblemResponse> get copyWith =>
      _$CreateProblemResponseCopyWithImpl<CreateProblemResponse>(
          this as CreateProblemResponse, _$identity);

  /// Serializes this CreateProblemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProblemResponse &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'CreateProblemResponse(status: $status)';
  }
}

/// @nodoc
abstract mixin class $CreateProblemResponseCopyWith<$Res> {
  factory $CreateProblemResponseCopyWith(CreateProblemResponse value,
          $Res Function(CreateProblemResponse) _then) =
      _$CreateProblemResponseCopyWithImpl;
  @useResult
  $Res call({int status});
}

/// @nodoc
class _$CreateProblemResponseCopyWithImpl<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  _$CreateProblemResponseCopyWithImpl(this._self, this._then);

  final CreateProblemResponse _self;
  final $Res Function(CreateProblemResponse) _then;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProblemResponse].
extension CreateProblemResponsePatterns on CreateProblemResponse {
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
    TResult Function(_CreateProblemResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProblemResponse() when $default != null:
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
    TResult Function(_CreateProblemResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemResponse():
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
    TResult? Function(_CreateProblemResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemResponse() when $default != null:
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
    TResult Function(int status)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProblemResponse() when $default != null:
        return $default(_that.status);
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
    TResult Function(int status) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemResponse():
        return $default(_that.status);
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
    TResult? Function(int status)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProblemResponse() when $default != null:
        return $default(_that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateProblemResponse extends CreateProblemResponse {
  const _CreateProblemResponse({required this.status}) : super._();
  factory _CreateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemResponseFromJson(json);

  @override
  final int status;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProblemResponseCopyWith<_CreateProblemResponse> get copyWith =>
      __$CreateProblemResponseCopyWithImpl<_CreateProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProblemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProblemResponse &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'CreateProblemResponse(status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CreateProblemResponseCopyWith<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  factory _$CreateProblemResponseCopyWith(_CreateProblemResponse value,
          $Res Function(_CreateProblemResponse) _then) =
      __$CreateProblemResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int status});
}

/// @nodoc
class __$CreateProblemResponseCopyWithImpl<$Res>
    implements _$CreateProblemResponseCopyWith<$Res> {
  __$CreateProblemResponseCopyWithImpl(this._self, this._then);

  final _CreateProblemResponse _self;
  final $Res Function(_CreateProblemResponse) _then;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(_CreateProblemResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
