// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderated_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModeratedImage {
  List<Map<String, dynamic>> get moderationLabels;
  String get moderationModelVersion;
  String get value;

  /// Create a copy of ModeratedImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModeratedImageCopyWith<ModeratedImage> get copyWith =>
      _$ModeratedImageCopyWithImpl<ModeratedImage>(
          this as ModeratedImage, _$identity);

  /// Serializes this ModeratedImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModeratedImage &&
            const DeepCollectionEquality()
                .equals(other.moderationLabels, moderationLabels) &&
            (identical(other.moderationModelVersion, moderationModelVersion) ||
                other.moderationModelVersion == moderationModelVersion) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(moderationLabels),
      moderationModelVersion,
      value);

  @override
  String toString() {
    return 'ModeratedImage(moderationLabels: $moderationLabels, moderationModelVersion: $moderationModelVersion, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ModeratedImageCopyWith<$Res> {
  factory $ModeratedImageCopyWith(
          ModeratedImage value, $Res Function(ModeratedImage) _then) =
      _$ModeratedImageCopyWithImpl;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> moderationLabels,
      String moderationModelVersion,
      String value});
}

/// @nodoc
class _$ModeratedImageCopyWithImpl<$Res>
    implements $ModeratedImageCopyWith<$Res> {
  _$ModeratedImageCopyWithImpl(this._self, this._then);

  final ModeratedImage _self;
  final $Res Function(ModeratedImage) _then;

  /// Create a copy of ModeratedImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moderationLabels = null,
    Object? moderationModelVersion = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      moderationLabels: null == moderationLabels
          ? _self.moderationLabels
          : moderationLabels // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      moderationModelVersion: null == moderationModelVersion
          ? _self.moderationModelVersion
          : moderationModelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModeratedImage].
extension ModeratedImagePatterns on ModeratedImage {
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
    TResult Function(_ModeratedImage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModeratedImage() when $default != null:
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
    TResult Function(_ModeratedImage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImage():
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
    TResult? Function(_ModeratedImage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImage() when $default != null:
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
    TResult Function(List<Map<String, dynamic>> moderationLabels,
            String moderationModelVersion, String value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModeratedImage() when $default != null:
        return $default(
            _that.moderationLabels, _that.moderationModelVersion, _that.value);
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
    TResult Function(List<Map<String, dynamic>> moderationLabels,
            String moderationModelVersion, String value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImage():
        return $default(
            _that.moderationLabels, _that.moderationModelVersion, _that.value);
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
    TResult? Function(List<Map<String, dynamic>> moderationLabels,
            String moderationModelVersion, String value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImage() when $default != null:
        return $default(
            _that.moderationLabels, _that.moderationModelVersion, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModeratedImage extends ModeratedImage {
  const _ModeratedImage(
      {final List<Map<String, dynamic>> moderationLabels = const [],
      this.moderationModelVersion = '',
      this.value = ''})
      : _moderationLabels = moderationLabels,
        super._();
  factory _ModeratedImage.fromJson(Map<String, dynamic> json) =>
      _$ModeratedImageFromJson(json);

  final List<Map<String, dynamic>> _moderationLabels;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get moderationLabels {
    if (_moderationLabels is EqualUnmodifiableListView)
      return _moderationLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderationLabels);
  }

  @override
  @JsonKey()
  final String moderationModelVersion;
  @override
  @JsonKey()
  final String value;

  /// Create a copy of ModeratedImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModeratedImageCopyWith<_ModeratedImage> get copyWith =>
      __$ModeratedImageCopyWithImpl<_ModeratedImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModeratedImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModeratedImage &&
            const DeepCollectionEquality()
                .equals(other._moderationLabels, _moderationLabels) &&
            (identical(other.moderationModelVersion, moderationModelVersion) ||
                other.moderationModelVersion == moderationModelVersion) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_moderationLabels),
      moderationModelVersion,
      value);

  @override
  String toString() {
    return 'ModeratedImage(moderationLabels: $moderationLabels, moderationModelVersion: $moderationModelVersion, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ModeratedImageCopyWith<$Res>
    implements $ModeratedImageCopyWith<$Res> {
  factory _$ModeratedImageCopyWith(
          _ModeratedImage value, $Res Function(_ModeratedImage) _then) =
      __$ModeratedImageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> moderationLabels,
      String moderationModelVersion,
      String value});
}

/// @nodoc
class __$ModeratedImageCopyWithImpl<$Res>
    implements _$ModeratedImageCopyWith<$Res> {
  __$ModeratedImageCopyWithImpl(this._self, this._then);

  final _ModeratedImage _self;
  final $Res Function(_ModeratedImage) _then;

  /// Create a copy of ModeratedImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? moderationLabels = null,
    Object? moderationModelVersion = null,
    Object? value = null,
  }) {
    return _then(_ModeratedImage(
      moderationLabels: null == moderationLabels
          ? _self._moderationLabels
          : moderationLabels // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      moderationModelVersion: null == moderationModelVersion
          ? _self.moderationModelVersion
          : moderationModelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
