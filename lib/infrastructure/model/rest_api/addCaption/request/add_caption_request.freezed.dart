// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_caption_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCaptionRequest {
  String get problemId;
  String get stringCaption;

  /// Create a copy of AddCaptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddCaptionRequestCopyWith<AddCaptionRequest> get copyWith =>
      _$AddCaptionRequestCopyWithImpl<AddCaptionRequest>(
          this as AddCaptionRequest, _$identity);

  /// Serializes this AddCaptionRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddCaptionRequest &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.stringCaption, stringCaption) ||
                other.stringCaption == stringCaption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problemId, stringCaption);

  @override
  String toString() {
    return 'AddCaptionRequest(problemId: $problemId, stringCaption: $stringCaption)';
  }
}

/// @nodoc
abstract mixin class $AddCaptionRequestCopyWith<$Res> {
  factory $AddCaptionRequestCopyWith(
          AddCaptionRequest value, $Res Function(AddCaptionRequest) _then) =
      _$AddCaptionRequestCopyWithImpl;
  @useResult
  $Res call({String problemId, String stringCaption});
}

/// @nodoc
class _$AddCaptionRequestCopyWithImpl<$Res>
    implements $AddCaptionRequestCopyWith<$Res> {
  _$AddCaptionRequestCopyWithImpl(this._self, this._then);

  final AddCaptionRequest _self;
  final $Res Function(AddCaptionRequest) _then;

  /// Create a copy of AddCaptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemId = null,
    Object? stringCaption = null,
  }) {
    return _then(_self.copyWith(
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      stringCaption: null == stringCaption
          ? _self.stringCaption
          : stringCaption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddCaptionRequest].
extension AddCaptionRequestPatterns on AddCaptionRequest {
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
    TResult Function(_AddCaptionRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddCaptionRequest() when $default != null:
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
    TResult Function(_AddCaptionRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionRequest():
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
    TResult? Function(_AddCaptionRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionRequest() when $default != null:
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
    TResult Function(String problemId, String stringCaption)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddCaptionRequest() when $default != null:
        return $default(_that.problemId, _that.stringCaption);
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
    TResult Function(String problemId, String stringCaption) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionRequest():
        return $default(_that.problemId, _that.stringCaption);
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
    TResult? Function(String problemId, String stringCaption)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddCaptionRequest() when $default != null:
        return $default(_that.problemId, _that.stringCaption);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddCaptionRequest extends AddCaptionRequest {
  const _AddCaptionRequest(
      {required this.problemId, required this.stringCaption})
      : super._();
  factory _AddCaptionRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCaptionRequestFromJson(json);

  @override
  final String problemId;
  @override
  final String stringCaption;

  /// Create a copy of AddCaptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddCaptionRequestCopyWith<_AddCaptionRequest> get copyWith =>
      __$AddCaptionRequestCopyWithImpl<_AddCaptionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddCaptionRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCaptionRequest &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.stringCaption, stringCaption) ||
                other.stringCaption == stringCaption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, problemId, stringCaption);

  @override
  String toString() {
    return 'AddCaptionRequest(problemId: $problemId, stringCaption: $stringCaption)';
  }
}

/// @nodoc
abstract mixin class _$AddCaptionRequestCopyWith<$Res>
    implements $AddCaptionRequestCopyWith<$Res> {
  factory _$AddCaptionRequestCopyWith(
          _AddCaptionRequest value, $Res Function(_AddCaptionRequest) _then) =
      __$AddCaptionRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String problemId, String stringCaption});
}

/// @nodoc
class __$AddCaptionRequestCopyWithImpl<$Res>
    implements _$AddCaptionRequestCopyWith<$Res> {
  __$AddCaptionRequestCopyWithImpl(this._self, this._then);

  final _AddCaptionRequest _self;
  final $Res Function(_AddCaptionRequest) _then;

  /// Create a copy of AddCaptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? problemId = null,
    Object? stringCaption = null,
  }) {
    return _then(_AddCaptionRequest(
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      stringCaption: null == stringCaption
          ? _self.stringCaption
          : stringCaption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
