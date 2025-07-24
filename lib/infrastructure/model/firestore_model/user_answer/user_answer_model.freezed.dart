// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAnswerModel {
  String get answer;
  dynamic get createdAt;
  int get likeCount;
  String get problemId;
  String get uid;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAnswerModelCopyWith<UserAnswerModel> get copyWith =>
      _$UserAnswerModelCopyWithImpl<UserAnswerModel>(
          this as UserAnswerModel, _$identity);

  /// Serializes this UserAnswerModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAnswerModel &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      answer,
      const DeepCollectionEquality().hash(createdAt),
      likeCount,
      problemId,
      uid);

  @override
  String toString() {
    return 'UserAnswerModel(answer: $answer, createdAt: $createdAt, likeCount: $likeCount, problemId: $problemId, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class $UserAnswerModelCopyWith<$Res> {
  factory $UserAnswerModelCopyWith(
          UserAnswerModel value, $Res Function(UserAnswerModel) _then) =
      _$UserAnswerModelCopyWithImpl;
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      int likeCount,
      String problemId,
      String uid});
}

/// @nodoc
class _$UserAnswerModelCopyWithImpl<$Res>
    implements $UserAnswerModelCopyWith<$Res> {
  _$UserAnswerModelCopyWithImpl(this._self, this._then);

  final UserAnswerModel _self;
  final $Res Function(UserAnswerModel) _then;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? likeCount = null,
    Object? problemId = null,
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
              as dynamic,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserAnswerModel].
extension UserAnswerModelPatterns on UserAnswerModel {
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
    TResult Function(_UserAnswerModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserAnswerModel() when $default != null:
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
    TResult Function(_UserAnswerModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerModel():
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
    TResult? Function(_UserAnswerModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerModel() when $default != null:
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
    TResult Function(String answer, dynamic createdAt, int likeCount,
            String problemId, String uid)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserAnswerModel() when $default != null:
        return $default(_that.answer, _that.createdAt, _that.likeCount,
            _that.problemId, _that.uid);
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
    TResult Function(String answer, dynamic createdAt, int likeCount,
            String problemId, String uid)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerModel():
        return $default(_that.answer, _that.createdAt, _that.likeCount,
            _that.problemId, _that.uid);
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
    TResult? Function(String answer, dynamic createdAt, int likeCount,
            String problemId, String uid)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAnswerModel() when $default != null:
        return $default(_that.answer, _that.createdAt, _that.likeCount,
            _that.problemId, _that.uid);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserAnswerModel extends UserAnswerModel {
  const _UserAnswerModel(
      {required this.answer,
      required this.createdAt,
      this.likeCount = 0,
      required this.problemId,
      required this.uid})
      : super._();
  factory _UserAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$UserAnswerModelFromJson(json);

  @override
  final String answer;
  @override
  final dynamic createdAt;
  @override
  @JsonKey()
  final int likeCount;
  @override
  final String problemId;
  @override
  final String uid;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserAnswerModelCopyWith<_UserAnswerModel> get copyWith =>
      __$UserAnswerModelCopyWithImpl<_UserAnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserAnswerModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAnswerModel &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.problemId, problemId) ||
                other.problemId == problemId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      answer,
      const DeepCollectionEquality().hash(createdAt),
      likeCount,
      problemId,
      uid);

  @override
  String toString() {
    return 'UserAnswerModel(answer: $answer, createdAt: $createdAt, likeCount: $likeCount, problemId: $problemId, uid: $uid)';
  }
}

/// @nodoc
abstract mixin class _$UserAnswerModelCopyWith<$Res>
    implements $UserAnswerModelCopyWith<$Res> {
  factory _$UserAnswerModelCopyWith(
          _UserAnswerModel value, $Res Function(_UserAnswerModel) _then) =
      __$UserAnswerModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String answer,
      dynamic createdAt,
      int likeCount,
      String problemId,
      String uid});
}

/// @nodoc
class __$UserAnswerModelCopyWithImpl<$Res>
    implements _$UserAnswerModelCopyWith<$Res> {
  __$UserAnswerModelCopyWithImpl(this._self, this._then);

  final _UserAnswerModel _self;
  final $Res Function(_UserAnswerModel) _then;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? answer = null,
    Object? createdAt = freezed,
    Object? likeCount = null,
    Object? problemId = null,
    Object? uid = null,
  }) {
    return _then(_UserAnswerModel(
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      problemId: null == problemId
          ? _self.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
