// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModerationLabel {
  double get confidence;
  String get name;
  String get parentName;
  int get taxonomyLevel;

  /// Create a copy of ModerationLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModerationLabelCopyWith<ModerationLabel> get copyWith =>
      _$ModerationLabelCopyWithImpl<ModerationLabel>(
          this as ModerationLabel, _$identity);

  /// Serializes this ModerationLabel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModerationLabel &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.taxonomyLevel, taxonomyLevel) ||
                other.taxonomyLevel == taxonomyLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, confidence, name, parentName, taxonomyLevel);

  @override
  String toString() {
    return 'ModerationLabel(confidence: $confidence, name: $name, parentName: $parentName, taxonomyLevel: $taxonomyLevel)';
  }
}

/// @nodoc
abstract mixin class $ModerationLabelCopyWith<$Res> {
  factory $ModerationLabelCopyWith(
          ModerationLabel value, $Res Function(ModerationLabel) _then) =
      _$ModerationLabelCopyWithImpl;
  @useResult
  $Res call(
      {double confidence, String name, String parentName, int taxonomyLevel});
}

/// @nodoc
class _$ModerationLabelCopyWithImpl<$Res>
    implements $ModerationLabelCopyWith<$Res> {
  _$ModerationLabelCopyWithImpl(this._self, this._then);

  final ModerationLabel _self;
  final $Res Function(ModerationLabel) _then;

  /// Create a copy of ModerationLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confidence = null,
    Object? name = null,
    Object? parentName = null,
    Object? taxonomyLevel = null,
  }) {
    return _then(_self.copyWith(
      confidence: null == confidence
          ? _self.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentName: null == parentName
          ? _self.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      taxonomyLevel: null == taxonomyLevel
          ? _self.taxonomyLevel
          : taxonomyLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModerationLabel].
extension ModerationLabelPatterns on ModerationLabel {
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
    TResult Function(_ModerationLabel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModerationLabel() when $default != null:
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
    TResult Function(_ModerationLabel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModerationLabel():
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
    TResult? Function(_ModerationLabel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModerationLabel() when $default != null:
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
    TResult Function(double confidence, String name, String parentName,
            int taxonomyLevel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModerationLabel() when $default != null:
        return $default(_that.confidence, _that.name, _that.parentName,
            _that.taxonomyLevel);
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
    TResult Function(double confidence, String name, String parentName,
            int taxonomyLevel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModerationLabel():
        return $default(_that.confidence, _that.name, _that.parentName,
            _that.taxonomyLevel);
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
    TResult? Function(double confidence, String name, String parentName,
            int taxonomyLevel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModerationLabel() when $default != null:
        return $default(_that.confidence, _that.name, _that.parentName,
            _that.taxonomyLevel);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ModerationLabel extends ModerationLabel {
  const _ModerationLabel(
      {required this.confidence,
      required this.name,
      required this.parentName,
      required this.taxonomyLevel})
      : super._();
  factory _ModerationLabel.fromJson(Map<String, dynamic> json) =>
      _$ModerationLabelFromJson(json);

  @override
  final double confidence;
  @override
  final String name;
  @override
  final String parentName;
  @override
  final int taxonomyLevel;

  /// Create a copy of ModerationLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModerationLabelCopyWith<_ModerationLabel> get copyWith =>
      __$ModerationLabelCopyWithImpl<_ModerationLabel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModerationLabelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModerationLabel &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.taxonomyLevel, taxonomyLevel) ||
                other.taxonomyLevel == taxonomyLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, confidence, name, parentName, taxonomyLevel);

  @override
  String toString() {
    return 'ModerationLabel(confidence: $confidence, name: $name, parentName: $parentName, taxonomyLevel: $taxonomyLevel)';
  }
}

/// @nodoc
abstract mixin class _$ModerationLabelCopyWith<$Res>
    implements $ModerationLabelCopyWith<$Res> {
  factory _$ModerationLabelCopyWith(
          _ModerationLabel value, $Res Function(_ModerationLabel) _then) =
      __$ModerationLabelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double confidence, String name, String parentName, int taxonomyLevel});
}

/// @nodoc
class __$ModerationLabelCopyWithImpl<$Res>
    implements _$ModerationLabelCopyWith<$Res> {
  __$ModerationLabelCopyWithImpl(this._self, this._then);

  final _ModerationLabel _self;
  final $Res Function(_ModerationLabel) _then;

  /// Create a copy of ModerationLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? confidence = null,
    Object? name = null,
    Object? parentName = null,
    Object? taxonomyLevel = null,
  }) {
    return _then(_ModerationLabel(
      confidence: null == confidence
          ? _self.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentName: null == parentName
          ? _self.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
      taxonomyLevel: null == taxonomyLevel
          ? _self.taxonomyLevel
          : taxonomyLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
