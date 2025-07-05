// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detected_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetectedText {
  String get languageCode;
  int get negativeScore;
  int get positiveScore;
  String get sentiment;
  String get value;

  /// Create a copy of DetectedText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<DetectedText> get copyWith =>
      _$DetectedTextCopyWithImpl<DetectedText>(
          this as DetectedText, _$identity);

  /// Serializes this DetectedText to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetectedText &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.negativeScore, negativeScore) ||
                other.negativeScore == negativeScore) &&
            (identical(other.positiveScore, positiveScore) ||
                other.positiveScore == positiveScore) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, negativeScore,
      positiveScore, sentiment, value);

  @override
  String toString() {
    return 'DetectedText(languageCode: $languageCode, negativeScore: $negativeScore, positiveScore: $positiveScore, sentiment: $sentiment, value: $value)';
  }
}

/// @nodoc
abstract mixin class $DetectedTextCopyWith<$Res> {
  factory $DetectedTextCopyWith(
          DetectedText value, $Res Function(DetectedText) _then) =
      _$DetectedTextCopyWithImpl;
  @useResult
  $Res call(
      {String languageCode,
      int negativeScore,
      int positiveScore,
      String sentiment,
      String value});
}

/// @nodoc
class _$DetectedTextCopyWithImpl<$Res> implements $DetectedTextCopyWith<$Res> {
  _$DetectedTextCopyWithImpl(this._self, this._then);

  final DetectedText _self;
  final $Res Function(DetectedText) _then;

  /// Create a copy of DetectedText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? negativeScore = null,
    Object? positiveScore = null,
    Object? sentiment = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      negativeScore: null == negativeScore
          ? _self.negativeScore
          : negativeScore // ignore: cast_nullable_to_non_nullable
              as int,
      positiveScore: null == positiveScore
          ? _self.positiveScore
          : positiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      sentiment: null == sentiment
          ? _self.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DetectedText].
extension DetectedTextPatterns on DetectedText {
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
    TResult Function(_DetectedText value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DetectedText() when $default != null:
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
    TResult Function(_DetectedText value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedText():
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
    TResult? Function(_DetectedText value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedText() when $default != null:
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
    TResult Function(String languageCode, int negativeScore, int positiveScore,
            String sentiment, String value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DetectedText() when $default != null:
        return $default(_that.languageCode, _that.negativeScore,
            _that.positiveScore, _that.sentiment, _that.value);
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
    TResult Function(String languageCode, int negativeScore, int positiveScore,
            String sentiment, String value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedText():
        return $default(_that.languageCode, _that.negativeScore,
            _that.positiveScore, _that.sentiment, _that.value);
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
    TResult? Function(String languageCode, int negativeScore, int positiveScore,
            String sentiment, String value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DetectedText() when $default != null:
        return $default(_that.languageCode, _that.negativeScore,
            _that.positiveScore, _that.sentiment, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DetectedText extends DetectedText {
  const _DetectedText(
      {this.languageCode = "",
      this.negativeScore = 0,
      this.positiveScore = 0,
      this.sentiment = "",
      this.value = ""})
      : super._();
  factory _DetectedText.fromJson(Map<String, dynamic> json) =>
      _$DetectedTextFromJson(json);

  @override
  @JsonKey()
  final String languageCode;
  @override
  @JsonKey()
  final int negativeScore;
  @override
  @JsonKey()
  final int positiveScore;
  @override
  @JsonKey()
  final String sentiment;
  @override
  @JsonKey()
  final String value;

  /// Create a copy of DetectedText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetectedTextCopyWith<_DetectedText> get copyWith =>
      __$DetectedTextCopyWithImpl<_DetectedText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DetectedTextToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetectedText &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.negativeScore, negativeScore) ||
                other.negativeScore == negativeScore) &&
            (identical(other.positiveScore, positiveScore) ||
                other.positiveScore == positiveScore) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, negativeScore,
      positiveScore, sentiment, value);

  @override
  String toString() {
    return 'DetectedText(languageCode: $languageCode, negativeScore: $negativeScore, positiveScore: $positiveScore, sentiment: $sentiment, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$DetectedTextCopyWith<$Res>
    implements $DetectedTextCopyWith<$Res> {
  factory _$DetectedTextCopyWith(
          _DetectedText value, $Res Function(_DetectedText) _then) =
      __$DetectedTextCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String languageCode,
      int negativeScore,
      int positiveScore,
      String sentiment,
      String value});
}

/// @nodoc
class __$DetectedTextCopyWithImpl<$Res>
    implements _$DetectedTextCopyWith<$Res> {
  __$DetectedTextCopyWithImpl(this._self, this._then);

  final _DetectedText _self;
  final $Res Function(_DetectedText) _then;

  /// Create a copy of DetectedText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? languageCode = null,
    Object? negativeScore = null,
    Object? positiveScore = null,
    Object? sentiment = null,
    Object? value = null,
  }) {
    return _then(_DetectedText(
      languageCode: null == languageCode
          ? _self.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      negativeScore: null == negativeScore
          ? _self.negativeScore
          : negativeScore // ignore: cast_nullable_to_non_nullable
              as int,
      positiveScore: null == positiveScore
          ? _self.positiveScore
          : positiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      sentiment: null == sentiment
          ? _self.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
