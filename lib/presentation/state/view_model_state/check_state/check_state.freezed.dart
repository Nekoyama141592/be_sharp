// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckState {
  bool get needsAgreeToTerms;
  bool get needsSignup;
  PublicUserEntity? get user;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckStateCopyWith<CheckState> get copyWith =>
      _$CheckStateCopyWithImpl<CheckState>(this as CheckState, _$identity);

  /// Serializes this CheckState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckState &&
            (identical(other.needsAgreeToTerms, needsAgreeToTerms) ||
                other.needsAgreeToTerms == needsAgreeToTerms) &&
            (identical(other.needsSignup, needsSignup) ||
                other.needsSignup == needsSignup) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, needsAgreeToTerms, needsSignup, user);

  @override
  String toString() {
    return 'CheckState(needsAgreeToTerms: $needsAgreeToTerms, needsSignup: $needsSignup, user: $user)';
  }
}

/// @nodoc
abstract mixin class $CheckStateCopyWith<$Res> {
  factory $CheckStateCopyWith(
          CheckState value, $Res Function(CheckState) _then) =
      _$CheckStateCopyWithImpl;
  @useResult
  $Res call({bool needsAgreeToTerms, bool needsSignup, PublicUserEntity? user});

  $PublicUserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$CheckStateCopyWithImpl<$Res> implements $CheckStateCopyWith<$Res> {
  _$CheckStateCopyWithImpl(this._self, this._then);

  final CheckState _self;
  final $Res Function(CheckState) _then;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needsAgreeToTerms = null,
    Object? needsSignup = null,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      needsAgreeToTerms: null == needsAgreeToTerms
          ? _self.needsAgreeToTerms
          : needsAgreeToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      needsSignup: null == needsSignup
          ? _self.needsSignup
          : needsSignup // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as PublicUserEntity?,
    ));
  }

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicUserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $PublicUserEntityCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CheckState].
extension CheckStatePatterns on CheckState {
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
    TResult Function(_CheckState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckState() when $default != null:
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
    TResult Function(_CheckState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckState():
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
    TResult? Function(_CheckState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckState() when $default != null:
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
    TResult Function(
            bool needsAgreeToTerms, bool needsSignup, PublicUserEntity? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckState() when $default != null:
        return $default(_that.needsAgreeToTerms, _that.needsSignup, _that.user);
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
    TResult Function(
            bool needsAgreeToTerms, bool needsSignup, PublicUserEntity? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckState():
        return $default(_that.needsAgreeToTerms, _that.needsSignup, _that.user);
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
    TResult? Function(
            bool needsAgreeToTerms, bool needsSignup, PublicUserEntity? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckState() when $default != null:
        return $default(_that.needsAgreeToTerms, _that.needsSignup, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CheckState extends CheckState {
  const _CheckState(
      {required this.needsAgreeToTerms,
      required this.needsSignup,
      required this.user})
      : super._();
  factory _CheckState.fromJson(Map<String, dynamic> json) =>
      _$CheckStateFromJson(json);

  @override
  final bool needsAgreeToTerms;
  @override
  final bool needsSignup;
  @override
  final PublicUserEntity? user;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckStateCopyWith<_CheckState> get copyWith =>
      __$CheckStateCopyWithImpl<_CheckState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckState &&
            (identical(other.needsAgreeToTerms, needsAgreeToTerms) ||
                other.needsAgreeToTerms == needsAgreeToTerms) &&
            (identical(other.needsSignup, needsSignup) ||
                other.needsSignup == needsSignup) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, needsAgreeToTerms, needsSignup, user);

  @override
  String toString() {
    return 'CheckState(needsAgreeToTerms: $needsAgreeToTerms, needsSignup: $needsSignup, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$CheckStateCopyWith<$Res>
    implements $CheckStateCopyWith<$Res> {
  factory _$CheckStateCopyWith(
          _CheckState value, $Res Function(_CheckState) _then) =
      __$CheckStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool needsAgreeToTerms, bool needsSignup, PublicUserEntity? user});

  @override
  $PublicUserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$CheckStateCopyWithImpl<$Res> implements _$CheckStateCopyWith<$Res> {
  __$CheckStateCopyWithImpl(this._self, this._then);

  final _CheckState _self;
  final $Res Function(_CheckState) _then;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? needsAgreeToTerms = null,
    Object? needsSignup = null,
    Object? user = freezed,
  }) {
    return _then(_CheckState(
      needsAgreeToTerms: null == needsAgreeToTerms
          ? _self.needsAgreeToTerms
          : needsAgreeToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      needsSignup: null == needsSignup
          ? _self.needsSignup
          : needsSignup // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as PublicUserEntity?,
    ));
  }

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicUserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $PublicUserEntityCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
