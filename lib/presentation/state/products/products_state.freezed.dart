// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsState {
  List<ProductEntity> get products;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      _$ProductsStateCopyWithImpl<ProductsState>(
          this as ProductsState, _$identity);

  /// Serializes this ProductsState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsState &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @override
  String toString() {
    return 'ProductsState(products: $products)';
  }
}

/// @nodoc
abstract mixin class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) _then) =
      _$ProductsStateCopyWithImpl;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._self, this._then);

  final ProductsState _self;
  final $Res Function(ProductsState) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_self.copyWith(
      products: null == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductsState].
extension ProductsStatePatterns on ProductsState {
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
    TResult Function(_ProductsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductsState() when $default != null:
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
    TResult Function(_ProductsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsState():
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
    TResult? Function(_ProductsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsState() when $default != null:
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
    TResult Function(List<ProductEntity> products)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductsState() when $default != null:
        return $default(_that.products);
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
    TResult Function(List<ProductEntity> products) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsState():
        return $default(_that.products);
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
    TResult? Function(List<ProductEntity> products)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsState() when $default != null:
        return $default(_that.products);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductsState extends ProductsState {
  const _ProductsState({required final List<ProductEntity> products})
      : _products = products,
        super._();
  factory _ProductsState.fromJson(Map<String, dynamic> json) =>
      _$ProductsStateFromJson(json);

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductsStateCopyWith<_ProductsState> get copyWith =>
      __$ProductsStateCopyWithImpl<_ProductsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductsStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'ProductsState(products: $products)';
  }
}

/// @nodoc
abstract mixin class _$ProductsStateCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$ProductsStateCopyWith(
          _ProductsState value, $Res Function(_ProductsState) _then) =
      __$ProductsStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$ProductsStateCopyWithImpl<$Res>
    implements _$ProductsStateCopyWith<$Res> {
  __$ProductsStateCopyWithImpl(this._self, this._then);

  final _ProductsState _self;
  final $Res Function(_ProductsState) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? products = null,
  }) {
    return _then(_ProductsState(
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

// dart format on
