// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseState {
  bool get isActive;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseStateCopyWith<PurchaseState> get copyWith =>
      _$PurchaseStateCopyWithImpl<PurchaseState>(
          this as PurchaseState, _$identity);

  /// Serializes this PurchaseState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseState &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isActive);

  @override
  String toString() {
    return 'PurchaseState(isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) _then) =
      _$PurchaseStateCopyWithImpl;
  @useResult
  $Res call({bool isActive});
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._self, this._then);

  final PurchaseState _self;
  final $Res Function(PurchaseState) _then;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
  }) {
    return _then(_self.copyWith(
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseState].
extension PurchaseStatePatterns on PurchaseState {
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
    TResult Function(_PurchaseState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseState() when $default != null:
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
    TResult Function(_PurchaseState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseState():
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
    TResult? Function(_PurchaseState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseState() when $default != null:
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
    TResult Function(bool isActive)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseState() when $default != null:
        return $default(_that.isActive);
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
    TResult Function(bool isActive) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseState():
        return $default(_that.isActive);
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
    TResult? Function(bool isActive)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseState() when $default != null:
        return $default(_that.isActive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseState implements PurchaseState {
  const _PurchaseState({required this.isActive});
  factory _PurchaseState.fromJson(Map<String, dynamic> json) =>
      _$PurchaseStateFromJson(json);

  @override
  final bool isActive;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      __$PurchaseStateCopyWithImpl<_PurchaseState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseState &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isActive);

  @override
  String toString() {
    return 'PurchaseState(isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseStateCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$PurchaseStateCopyWith(
          _PurchaseState value, $Res Function(_PurchaseState) _then) =
      __$PurchaseStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isActive});
}

/// @nodoc
class __$PurchaseStateCopyWithImpl<$Res>
    implements _$PurchaseStateCopyWith<$Res> {
  __$PurchaseStateCopyWithImpl(this._self, this._then);

  final _PurchaseState _self;
  final $Res Function(_PurchaseState) _then;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isActive = null,
  }) {
    return _then(_PurchaseState(
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
