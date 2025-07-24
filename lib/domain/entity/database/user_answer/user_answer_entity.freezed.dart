// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_answer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAnswerEntity {
  String get answer;
  @TimestampConverter()
  DateTime? get createdAt;
  String get problemId;
  DetectedTextEntity? get caption;
  String get uid;

  /// Create a copy of UserAnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAnswerEntityCopyWith<UserAnswerEntity> get copyWith =>
      _$UserAnswerEntityCopyWithImpl<UserAnswerEntity>(
          this as UserAnswerEntity, _$identity);

  /// Serializes this UserAnswerEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAnswerEntity &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, answer, createdAt, problemId, caption, uid);

  @override
  String toString() {
    return 'UserAnswerEntity(answer: $answer, createdAt: $createdAt, problemId: $problemId, caption: $caption, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class $UserAnswerEntityCopyWith<$Res> {
  factory $UserAnswerEntityCopyWith(
          UserAnswerEntity value, $Res Function(UserAnswerEntity) _then) =
      _$UserAnswerEntityCopyWithImpl;
  @useResult
  $Res call(
      {String answer,
      @TimestampConverter() DateTime? createdAt,
      String problemId,
      DetectedTextEntity? caption,
      String uid});

  $DetectedTextEntityCopyWith<$Res>? get caption;
}

/// @nodoc
class _$UserAnswerEntityCopyWithImpl<$Res>
    implements $UserAnswerEntityCopyWith<$Res> {
  _$UserAnswerEntityCopyWithImpl(this._self, this._then);

  final UserAnswerEntity _self;
  final $Res Function(UserAnswerEntity) _then;

  /// Create a copy of UserAnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? caption = freezed,
    Object? uid = null,
  }) {
    return _then(_self.copyWith(
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedTextEntity?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of UserAnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextEntityCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $DetectedTextEntityCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserAnswerEntity].
extension UserAnswerEntityPatterns on UserAnswerEntity {
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
    TResult Function(_UserAnswerEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserAnswerEntity() when $default != null:
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
    TResult Function(_UserAnswerEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerEntity():
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
    TResult? Function(_UserAnswerEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerEntity() when $default != null:
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
    TResult Function(String answer, @TimestampConverter() DateTime? createdAt,
            String problemId, DetectedTextEntity? caption, String uid)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserAnswerEntity() when $default != null:
        return $default(_that.answer, _that.createdAt, _that.problemId,
            _that.caption, _that.uid);
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
    TResult Function(String answer, @TimestampConverter() DateTime? createdAt,
            String problemId, DetectedTextEntity? caption, String uid)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerEntity():
        return $default(_that.answer, _that.createdAt, _that.problemId,
            _that.caption, _that.uid);
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
    TResult? Function(String answer, @TimestampConverter() DateTime? createdAt,
            String problemId, DetectedTextEntity? caption, String uid)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerEntity() when $default != null:
        return $default(_that.answer, _that.createdAt, _that.problemId,
            _that.caption, _that.uid);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserAnswerEntity extends UserAnswerEntity {
  const _UserAnswerEntity(
      {required this.answer,
      @TimestampConverter() this.createdAt,
      required this.problemId,
      required this.caption,
      required this.uid})
      : super._();
  factory _UserAnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerEntityFromJson(json);

  @override
  final String answer;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  final String problemId;
  @override
  final DetectedTextEntity? caption;
  @override
  final String uid;

  /// Create a copy of UserAnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserAnswerEntityCopyWith<_UserAnswerEntity> get copyWith =>
      __$UserAnswerEntityCopyWithImpl<_UserAnswerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserAnswerEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAnswerEntity &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, answer, createdAt, problemId, caption, uid);

  @override
  String toString() {
    return 'UserAnswerEntity(answer: $answer, createdAt: $createdAt, problemId: $problemId, caption: $caption, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class _$UserAnswerEntityCopyWith<$Res>
    implements $UserAnswerEntityCopyWith<$Res> {
  factory _$UserAnswerEntityCopyWith(
          _UserAnswerEntity value, $Res Function(_UserAnswerEntity) _then) =
      __$UserAnswerEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String answer,
      @TimestampConverter() DateTime? createdAt,
      String problemId,
      DetectedTextEntity? caption,
      String uid});

  @override
  $DetectedTextEntityCopyWith<$Res>? get caption;
}

/// @nodoc
class __$UserAnswerEntityCopyWithImpl<$Res>
    implements _$UserAnswerEntityCopyWith<$Res> {
  __$UserAnswerEntityCopyWithImpl(this._self, this._then);

  final _UserAnswerEntity _self;
  final $Res Function(_UserAnswerEntity) _then;

  /// Create a copy of UserAnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? problemId = null,
    Object? caption = freezed,
    Object? uid = null,
  }) {
    return _then(_UserAnswerEntity(
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as DetectedTextEntity?,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of UserAnswerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextEntityCopyWith<$Res>? get caption {
    if (_self.caption == null) {
      return null;
    }

    return $DetectedTextEntityCopyWith<$Res>(_self.caption!, (value) {
      return _then(_self.copyWith(caption: value));
    });
  }
}

// dart format on
