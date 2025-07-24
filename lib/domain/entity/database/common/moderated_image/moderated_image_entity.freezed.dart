// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderated_image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModeratedImageEntity {
  List<ModerationLabel> get moderationLabels;
  String get moderationModelVersion;
  String get value;

  /// Create a copy of ModeratedImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModeratedImageEntityCopyWith<ModeratedImageEntity> get copyWith =>
      _$ModeratedImageEntityCopyWithImpl<ModeratedImageEntity>(
          this as ModeratedImageEntity, _$identity);

  /// Serializes this ModeratedImageEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModeratedImageEntity &&
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
    return 'ModeratedImageEntity(moderationLabels: $moderationLabels, moderationModelVersion: $moderationModelVersion, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ModeratedImageEntityCopyWith<$Res> {
  factory $ModeratedImageEntityCopyWith(ModeratedImageEntity value,
          $Res Function(ModeratedImageEntity) _then) =
      _$ModeratedImageEntityCopyWithImpl;
  @useResult
  $Res call(
      {List<ModerationLabel> moderationLabels,
      String moderationModelVersion,
      String value});
}

/// @nodoc
class _$ModeratedImageEntityCopyWithImpl<$Res>
    implements $ModeratedImageEntityCopyWith<$Res> {
  _$ModeratedImageEntityCopyWithImpl(this._self, this._then);

  final ModeratedImageEntity _self;
  final $Res Function(ModeratedImageEntity) _then;

  /// Create a copy of ModeratedImageEntity
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
              as List<ModerationLabel>,
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

/// Adds pattern-matching-related methods to [ModeratedImageEntity].
extension ModeratedImageEntityPatterns on ModeratedImageEntity {
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
    TResult Function(_ModeratedImageEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModeratedImageEntity() when $default != null:
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
    TResult Function(_ModeratedImageEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImageEntity():
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
    TResult? Function(_ModeratedImageEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImageEntity() when $default != null:
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
    TResult Function(List<ModerationLabel> moderationLabels,
            String moderationModelVersion, String value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModeratedImageEntity() when $default != null:
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
    TResult Function(List<ModerationLabel> moderationLabels,
            String moderationModelVersion, String value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImageEntity():
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
    TResult? Function(List<ModerationLabel> moderationLabels,
            String moderationModelVersion, String value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModeratedImageEntity() when $default != null:
        return $default(
            _that.moderationLabels, _that.moderationModelVersion, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModeratedImageEntity extends ModeratedImageEntity {
  const _ModeratedImageEntity(
      {final List<ModerationLabel> moderationLabels = const [],
      this.moderationModelVersion = '',
      this.value = ''})
      : _moderationLabels = moderationLabels,
        super._();
  factory _ModeratedImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ModeratedImageEntityFromJson(json);

  final List<ModerationLabel> _moderationLabels;
  @override
  @JsonKey()
  List<ModerationLabel> get moderationLabels {
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

  /// Create a copy of ModeratedImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModeratedImageEntityCopyWith<_ModeratedImageEntity> get copyWith =>
      __$ModeratedImageEntityCopyWithImpl<_ModeratedImageEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModeratedImageEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModeratedImageEntity &&
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
    return 'ModeratedImageEntity(moderationLabels: $moderationLabels, moderationModelVersion: $moderationModelVersion, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ModeratedImageEntityCopyWith<$Res>
    implements $ModeratedImageEntityCopyWith<$Res> {
  factory _$ModeratedImageEntityCopyWith(_ModeratedImageEntity value,
          $Res Function(_ModeratedImageEntity) _then) =
      __$ModeratedImageEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ModerationLabel> moderationLabels,
      String moderationModelVersion,
      String value});
}

/// @nodoc
class __$ModeratedImageEntityCopyWithImpl<$Res>
    implements _$ModeratedImageEntityCopyWith<$Res> {
  __$ModeratedImageEntityCopyWithImpl(this._self, this._then);

  final _ModeratedImageEntity _self;
  final $Res Function(_ModeratedImageEntity) _then;

  /// Create a copy of ModeratedImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? moderationLabels = null,
    Object? moderationModelVersion = null,
    Object? value = null,
  }) {
    return _then(_ModeratedImageEntity(
      moderationLabels: null == moderationLabels
          ? _self._moderationLabels
          : moderationLabels // ignore: cast_nullable_to_non_nullable
              as List<ModerationLabel>,
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
