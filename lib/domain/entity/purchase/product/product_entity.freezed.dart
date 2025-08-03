// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductEntity {
  bool get isMonthly;
  String get packageId;
  String get title;
  String get description;
  String get price;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      _$ProductEntityCopyWithImpl<ProductEntity>(
          this as ProductEntity, _$identity);

  /// Serializes this ProductEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductEntity &&
            (identical(other.isMonthly, isMonthly) ||
                other.isMonthly == isMonthly) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isMonthly, packageId, title, description, price);

  @override
  String toString() {
    return 'ProductEntity(isMonthly: $isMonthly, packageId: $packageId, title: $title, description: $description, price: $price)';
  }
}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) _then) =
      _$ProductEntityCopyWithImpl;
  @useResult
  $Res call(
      {bool isMonthly,
      String packageId,
      String title,
      String description,
      String price});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMonthly = null,
    Object? packageId = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
  }) {
    return _then(_self.copyWith(
      isMonthly: null == isMonthly
          ? _self.isMonthly
          : isMonthly // ignore: cast_nullable_to_non_nullable
              as bool,
      packageId: null == packageId
          ? _self.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductEntity].
extension ProductEntityPatterns on ProductEntity {
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
    TResult Function(_ProductEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductEntity() when $default != null:
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
    TResult Function(_ProductEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductEntity():
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
    TResult? Function(_ProductEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductEntity() when $default != null:
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
    TResult Function(bool isMonthly, String packageId, String title,
            String description, String price)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductEntity() when $default != null:
        return $default(_that.isMonthly, _that.packageId, _that.title,
            _that.description, _that.price);
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
    TResult Function(bool isMonthly, String packageId, String title,
            String description, String price)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductEntity():
        return $default(_that.isMonthly, _that.packageId, _that.title,
            _that.description, _that.price);
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
    TResult? Function(bool isMonthly, String packageId, String title,
            String description, String price)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductEntity() when $default != null:
        return $default(_that.isMonthly, _that.packageId, _that.title,
            _that.description, _that.price);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductEntity implements ProductEntity {
  const _ProductEntity(
      {required this.isMonthly,
      required this.packageId,
      required this.title,
      required this.description,
      required this.price});
  factory _ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);

  @override
  final bool isMonthly;
  @override
  final String packageId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductEntityCopyWith<_ProductEntity> get copyWith =>
      __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductEntity &&
            (identical(other.isMonthly, isMonthly) ||
                other.isMonthly == isMonthly) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isMonthly, packageId, title, description, price);

  @override
  String toString() {
    return 'ProductEntity(isMonthly: $isMonthly, packageId: $packageId, title: $title, description: $description, price: $price)';
  }
}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(
          _ProductEntity value, $Res Function(_ProductEntity) _then) =
      __$ProductEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isMonthly,
      String packageId,
      String title,
      String description,
      String price});
}

/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isMonthly = null,
    Object? packageId = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
  }) {
    return _then(_ProductEntity(
      isMonthly: null == isMonthly
          ? _self.isMonthly
          : isMonthly // ignore: cast_nullable_to_non_nullable
              as bool,
      packageId: null == packageId
          ? _self.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
