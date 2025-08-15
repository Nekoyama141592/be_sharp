// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnsweredUser {
  PublicUserEntity get publicUser;
  UserAnswerEntity get userAnswer;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnsweredUserCopyWith<AnsweredUser> get copyWith =>
      _$AnsweredUserCopyWithImpl<AnsweredUser>(
          this as AnsweredUser, _$identity);

  /// Serializes this AnsweredUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnsweredUser &&
            (identical(other.publicUser, publicUser) ||
                other.publicUser == publicUser) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicUser, userAnswer);

  @override
  String toString() {
    return 'AnsweredUser(publicUser: $publicUser, userAnswer: $userAnswer)';
  }
}

/// @nodoc
abstract mixin class $AnsweredUserCopyWith<$Res> {
  factory $AnsweredUserCopyWith(
          AnsweredUser value, $Res Function(AnsweredUser) _then) =
      _$AnsweredUserCopyWithImpl;
  @useResult
  $Res call({PublicUserEntity publicUser, UserAnswerEntity userAnswer});

  $PublicUserEntityCopyWith<$Res> get publicUser;
  $UserAnswerEntityCopyWith<$Res> get userAnswer;
}

/// @nodoc
class _$AnsweredUserCopyWithImpl<$Res> implements $AnsweredUserCopyWith<$Res> {
  _$AnsweredUserCopyWithImpl(this._self, this._then);

  final AnsweredUser _self;
  final $Res Function(AnsweredUser) _then;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicUser = null,
    Object? userAnswer = null,
  }) {
    return _then(_self.copyWith(
      publicUser: null == publicUser
          ? _self.publicUser
          : publicUser // ignore: cast_nullable_to_non_nullable
              as PublicUserEntity,
      userAnswer: null == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as UserAnswerEntity,
    ));
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicUserEntityCopyWith<$Res> get publicUser {
    return $PublicUserEntityCopyWith<$Res>(_self.publicUser, (value) {
      return _then(_self.copyWith(publicUser: value));
    });
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAnswerEntityCopyWith<$Res> get userAnswer {
    return $UserAnswerEntityCopyWith<$Res>(_self.userAnswer, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AnsweredUser].
extension AnsweredUserPatterns on AnsweredUser {
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
    TResult Function(_AnsweredUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnsweredUser() when $default != null:
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
    TResult Function(_AnsweredUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnsweredUser():
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
    TResult? Function(_AnsweredUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnsweredUser() when $default != null:
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
    TResult Function(PublicUserEntity publicUser, UserAnswerEntity userAnswer)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnsweredUser() when $default != null:
        return $default(_that.publicUser, _that.userAnswer);
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
    TResult Function(PublicUserEntity publicUser, UserAnswerEntity userAnswer)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnsweredUser():
        return $default(_that.publicUser, _that.userAnswer);
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
    TResult? Function(PublicUserEntity publicUser, UserAnswerEntity userAnswer)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnsweredUser() when $default != null:
        return $default(_that.publicUser, _that.userAnswer);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AnsweredUser extends AnsweredUser {
  const _AnsweredUser({required this.publicUser, required this.userAnswer})
      : super._();
  factory _AnsweredUser.fromJson(Map<String, dynamic> json) =>
      _$AnsweredUserFromJson(json);

  @override
  final PublicUserEntity publicUser;
  @override
  final UserAnswerEntity userAnswer;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnsweredUserCopyWith<_AnsweredUser> get copyWith =>
      __$AnsweredUserCopyWithImpl<_AnsweredUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnsweredUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnsweredUser &&
            (identical(other.publicUser, publicUser) ||
                other.publicUser == publicUser) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicUser, userAnswer);

  @override
  String toString() {
    return 'AnsweredUser(publicUser: $publicUser, userAnswer: $userAnswer)';
  }
}

/// @nodoc
abstract mixin class _$AnsweredUserCopyWith<$Res>
    implements $AnsweredUserCopyWith<$Res> {
  factory _$AnsweredUserCopyWith(
          _AnsweredUser value, $Res Function(_AnsweredUser) _then) =
      __$AnsweredUserCopyWithImpl;
  @override
  @useResult
  $Res call({PublicUserEntity publicUser, UserAnswerEntity userAnswer});

  @override
  $PublicUserEntityCopyWith<$Res> get publicUser;
  @override
  $UserAnswerEntityCopyWith<$Res> get userAnswer;
}

/// @nodoc
class __$AnsweredUserCopyWithImpl<$Res>
    implements _$AnsweredUserCopyWith<$Res> {
  __$AnsweredUserCopyWithImpl(this._self, this._then);

  final _AnsweredUser _self;
  final $Res Function(_AnsweredUser) _then;

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicUser = null,
    Object? userAnswer = null,
  }) {
    return _then(_AnsweredUser(
      publicUser: null == publicUser
          ? _self.publicUser
          : publicUser // ignore: cast_nullable_to_non_nullable
              as PublicUserEntity,
      userAnswer: null == userAnswer
          ? _self.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as UserAnswerEntity,
    ));
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicUserEntityCopyWith<$Res> get publicUser {
    return $PublicUserEntityCopyWith<$Res>(_self.publicUser, (value) {
      return _then(_self.copyWith(publicUser: value));
    });
  }

  /// Create a copy of AnsweredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAnswerEntityCopyWith<$Res> get userAnswer {
    return $UserAnswerEntityCopyWith<$Res>(_self.userAnswer, (value) {
      return _then(_self.copyWith(userAnswer: value));
    });
  }
}

// dart format on
