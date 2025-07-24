// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detected_text_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetectedTextEntity {
  int get negativeScore;
  String get value;

  /// Create a copy of DetectedTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetectedTextEntityCopyWith<DetectedTextEntity> get copyWith =>
      _$DetectedTextEntityCopyWithImpl<DetectedTextEntity>(
          this as DetectedTextEntity, _$identity);

  /// Serializes this DetectedTextEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetectedTextEntity &&
            (identical(other.negativeScore, negativeScore) ||
                other.negativeScore == negativeScore) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, negativeScore, value);

  @override
  String toString() {
    return 'DetectedTextEntity(negativeScore: $negativeScore, value: $value)';
  }
}

/// @nodoc
abstract mixin class $DetectedTextEntityCopyWith<$Res> {
  factory $DetectedTextEntityCopyWith(
          DetectedTextEntity value, $Res Function(DetectedTextEntity) _then) =
      _$DetectedTextEntityCopyWithImpl;
  @useResult
  $Res call({int negativeScore, String value});
}

/// @nodoc
class _$DetectedTextEntityCopyWithImpl<$Res>
    implements $DetectedTextEntityCopyWith<$Res> {
  _$DetectedTextEntityCopyWithImpl(this._self, this._then);

  final DetectedTextEntity _self;
  final $Res Function(DetectedTextEntity) _then;

  /// Create a copy of DetectedTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? negativeScore = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      negativeScore: null == negativeScore
          ? _self.negativeScore
          : negativeScore // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DetectedTextEntity].
extension DetectedTextEntityPatterns on DetectedTextEntity {
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
    TResult Function(_DetectedTextEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DetectedTextEntity() when $default != null:
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
    TResult Function(_DetectedTextEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedTextEntity():
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
    TResult? Function(_DetectedTextEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedTextEntity() when $default != null:
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
    TResult Function(int negativeScore, String value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DetectedTextEntity() when $default != null:
        return $default(_that.negativeScore, _that.value);
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
    TResult Function(int negativeScore, String value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedTextEntity():
        return $default(_that.negativeScore, _that.value);
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
    TResult? Function(int negativeScore, String value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedTextEntity() when $default != null:
        return $default(_that.negativeScore, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DetectedTextEntity extends DetectedTextEntity {
  const _DetectedTextEntity({required this.negativeScore, required this.value})
      : super._();
  factory _DetectedTextEntity.fromJson(Map<String, dynamic> json) =>
      _$DetectedTextEntityFromJson(json);

  @override
  final int negativeScore;
  @override
  final String value;

  /// Create a copy of DetectedTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetectedTextEntityCopyWith<_DetectedTextEntity> get copyWith =>
      __$DetectedTextEntityCopyWithImpl<_DetectedTextEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DetectedTextEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetectedTextEntity &&
            (identical(other.negativeScore, negativeScore) ||
                other.negativeScore == negativeScore) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, negativeScore, value);

  @override
  String toString() {
    return 'DetectedTextEntity(negativeScore: $negativeScore, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$DetectedTextEntityCopyWith<$Res>
    implements $DetectedTextEntityCopyWith<$Res> {
  factory _$DetectedTextEntityCopyWith(
          _DetectedTextEntity value, $Res Function(_DetectedTextEntity) _then) =
      __$DetectedTextEntityCopyWithImpl;
  @override
  @useResult
  $Res call({int negativeScore, String value});
}

/// @nodoc
class __$DetectedTextEntityCopyWithImpl<$Res>
    implements _$DetectedTextEntityCopyWith<$Res> {
  __$DetectedTextEntityCopyWithImpl(this._self, this._then);

  final _DetectedTextEntity _self;
  final $Res Function(_DetectedTextEntity) _then;

  /// Create a copy of DetectedTextEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? negativeScore = null,
    Object? value = null,
  }) {
    return _then(_DetectedTextEntity(
      negativeScore: null == negativeScore
          ? _self.negativeScore
          : negativeScore // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
