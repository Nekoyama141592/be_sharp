// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ios_receipt_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IOSReceiptResponse {
  String get expires_date;
  String get expires_date_ms;
  String get expires_date_pst;
  String get in_app_ownership_type;
  String get is_in_intro_offer_period;
  String get is_trial_period;
  String get original_purchase_date;
  String get original_purchase_date_ms;
  String get original_purchase_date_pst;
  String get original_transaction_id;
  String get product_id;
  String get purchase_date;
  String get purchase_date_ms;
  String get purchase_date_pst;
  String get quantity;
  String get subscription_group_identifier;
  String get transaction_id;
  String get web_order_line_item_id;

  /// Create a copy of IOSReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IOSReceiptResponseCopyWith<IOSReceiptResponse> get copyWith =>
      _$IOSReceiptResponseCopyWithImpl<IOSReceiptResponse>(
          this as IOSReceiptResponse, _$identity);

  /// Serializes this IOSReceiptResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IOSReceiptResponse &&
            (identical(other.expires_date, expires_date) ||
                other.expires_date == expires_date) &&
            (identical(other.expires_date_ms, expires_date_ms) ||
                other.expires_date_ms == expires_date_ms) &&
            (identical(other.expires_date_pst, expires_date_pst) ||
                other.expires_date_pst == expires_date_pst) &&
            (identical(other.in_app_ownership_type, in_app_ownership_type) ||
                other.in_app_ownership_type == in_app_ownership_type) &&
            (identical(
                    other.is_in_intro_offer_period, is_in_intro_offer_period) ||
                other.is_in_intro_offer_period == is_in_intro_offer_period) &&
            (identical(other.is_trial_period, is_trial_period) ||
                other.is_trial_period == is_trial_period) &&
            (identical(other.original_purchase_date, original_purchase_date) ||
                other.original_purchase_date == original_purchase_date) &&
            (identical(other.original_purchase_date_ms, original_purchase_date_ms) ||
                other.original_purchase_date_ms == original_purchase_date_ms) &&
            (identical(other.original_purchase_date_pst, original_purchase_date_pst) ||
                other.original_purchase_date_pst ==
                    original_purchase_date_pst) &&
            (identical(other.original_transaction_id, original_transaction_id) ||
                other.original_transaction_id == original_transaction_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.purchase_date, purchase_date) ||
                other.purchase_date == purchase_date) &&
            (identical(other.purchase_date_ms, purchase_date_ms) ||
                other.purchase_date_ms == purchase_date_ms) &&
            (identical(other.purchase_date_pst, purchase_date_pst) ||
                other.purchase_date_pst == purchase_date_pst) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subscription_group_identifier,
                    subscription_group_identifier) ||
                other.subscription_group_identifier ==
                    subscription_group_identifier) &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id) &&
            (identical(other.web_order_line_item_id, web_order_line_item_id) ||
                other.web_order_line_item_id == web_order_line_item_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expires_date,
      expires_date_ms,
      expires_date_pst,
      in_app_ownership_type,
      is_in_intro_offer_period,
      is_trial_period,
      original_purchase_date,
      original_purchase_date_ms,
      original_purchase_date_pst,
      original_transaction_id,
      product_id,
      purchase_date,
      purchase_date_ms,
      purchase_date_pst,
      quantity,
      subscription_group_identifier,
      transaction_id,
      web_order_line_item_id);

  @override
  String toString() {
    return 'IOSReceiptResponse(expires_date: $expires_date, expires_date_ms: $expires_date_ms, expires_date_pst: $expires_date_pst, in_app_ownership_type: $in_app_ownership_type, is_in_intro_offer_period: $is_in_intro_offer_period, is_trial_period: $is_trial_period, original_purchase_date: $original_purchase_date, original_purchase_date_ms: $original_purchase_date_ms, original_purchase_date_pst: $original_purchase_date_pst, original_transaction_id: $original_transaction_id, product_id: $product_id, purchase_date: $purchase_date, purchase_date_ms: $purchase_date_ms, purchase_date_pst: $purchase_date_pst, quantity: $quantity, subscription_group_identifier: $subscription_group_identifier, transaction_id: $transaction_id, web_order_line_item_id: $web_order_line_item_id)';
  }
}

/// @nodoc
abstract mixin class $IOSReceiptResponseCopyWith<$Res> {
  factory $IOSReceiptResponseCopyWith(
          IOSReceiptResponse value, $Res Function(IOSReceiptResponse) _then) =
      _$IOSReceiptResponseCopyWithImpl;
  @useResult
  $Res call(
      {String expires_date,
      String expires_date_ms,
      String expires_date_pst,
      String in_app_ownership_type,
      String is_in_intro_offer_period,
      String is_trial_period,
      String original_purchase_date,
      String original_purchase_date_ms,
      String original_purchase_date_pst,
      String original_transaction_id,
      String product_id,
      String purchase_date,
      String purchase_date_ms,
      String purchase_date_pst,
      String quantity,
      String subscription_group_identifier,
      String transaction_id,
      String web_order_line_item_id});
}

/// @nodoc
class _$IOSReceiptResponseCopyWithImpl<$Res>
    implements $IOSReceiptResponseCopyWith<$Res> {
  _$IOSReceiptResponseCopyWithImpl(this._self, this._then);

  final IOSReceiptResponse _self;
  final $Res Function(IOSReceiptResponse) _then;

  /// Create a copy of IOSReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expires_date = null,
    Object? expires_date_ms = null,
    Object? expires_date_pst = null,
    Object? in_app_ownership_type = null,
    Object? is_in_intro_offer_period = null,
    Object? is_trial_period = null,
    Object? original_purchase_date = null,
    Object? original_purchase_date_ms = null,
    Object? original_purchase_date_pst = null,
    Object? original_transaction_id = null,
    Object? product_id = null,
    Object? purchase_date = null,
    Object? purchase_date_ms = null,
    Object? purchase_date_pst = null,
    Object? quantity = null,
    Object? subscription_group_identifier = null,
    Object? transaction_id = null,
    Object? web_order_line_item_id = null,
  }) {
    return _then(_self.copyWith(
      expires_date: null == expires_date
          ? _self.expires_date
          : expires_date // ignore: cast_nullable_to_non_nullable
              as String,
      expires_date_ms: null == expires_date_ms
          ? _self.expires_date_ms
          : expires_date_ms // ignore: cast_nullable_to_non_nullable
              as String,
      expires_date_pst: null == expires_date_pst
          ? _self.expires_date_pst
          : expires_date_pst // ignore: cast_nullable_to_non_nullable
              as String,
      in_app_ownership_type: null == in_app_ownership_type
          ? _self.in_app_ownership_type
          : in_app_ownership_type // ignore: cast_nullable_to_non_nullable
              as String,
      is_in_intro_offer_period: null == is_in_intro_offer_period
          ? _self.is_in_intro_offer_period
          : is_in_intro_offer_period // ignore: cast_nullable_to_non_nullable
              as String,
      is_trial_period: null == is_trial_period
          ? _self.is_trial_period
          : is_trial_period // ignore: cast_nullable_to_non_nullable
              as String,
      original_purchase_date: null == original_purchase_date
          ? _self.original_purchase_date
          : original_purchase_date // ignore: cast_nullable_to_non_nullable
              as String,
      original_purchase_date_ms: null == original_purchase_date_ms
          ? _self.original_purchase_date_ms
          : original_purchase_date_ms // ignore: cast_nullable_to_non_nullable
              as String,
      original_purchase_date_pst: null == original_purchase_date_pst
          ? _self.original_purchase_date_pst
          : original_purchase_date_pst // ignore: cast_nullable_to_non_nullable
              as String,
      original_transaction_id: null == original_transaction_id
          ? _self.original_transaction_id
          : original_transaction_id // ignore: cast_nullable_to_non_nullable
              as String,
      product_id: null == product_id
          ? _self.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as String,
      purchase_date: null == purchase_date
          ? _self.purchase_date
          : purchase_date // ignore: cast_nullable_to_non_nullable
              as String,
      purchase_date_ms: null == purchase_date_ms
          ? _self.purchase_date_ms
          : purchase_date_ms // ignore: cast_nullable_to_non_nullable
              as String,
      purchase_date_pst: null == purchase_date_pst
          ? _self.purchase_date_pst
          : purchase_date_pst // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      subscription_group_identifier: null == subscription_group_identifier
          ? _self.subscription_group_identifier
          : subscription_group_identifier // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_id: null == transaction_id
          ? _self.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String,
      web_order_line_item_id: null == web_order_line_item_id
          ? _self.web_order_line_item_id
          : web_order_line_item_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [IOSReceiptResponse].
extension IOSReceiptResponsePatterns on IOSReceiptResponse {
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
    TResult Function(_IOSReceiptResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IOSReceiptResponse() when $default != null:
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
    TResult Function(_IOSReceiptResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IOSReceiptResponse():
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
    TResult? Function(_IOSReceiptResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IOSReceiptResponse() when $default != null:
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
            String expires_date,
            String expires_date_ms,
            String expires_date_pst,
            String in_app_ownership_type,
            String is_in_intro_offer_period,
            String is_trial_period,
            String original_purchase_date,
            String original_purchase_date_ms,
            String original_purchase_date_pst,
            String original_transaction_id,
            String product_id,
            String purchase_date,
            String purchase_date_ms,
            String purchase_date_pst,
            String quantity,
            String subscription_group_identifier,
            String transaction_id,
            String web_order_line_item_id)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IOSReceiptResponse() when $default != null:
        return $default(
            _that.expires_date,
            _that.expires_date_ms,
            _that.expires_date_pst,
            _that.in_app_ownership_type,
            _that.is_in_intro_offer_period,
            _that.is_trial_period,
            _that.original_purchase_date,
            _that.original_purchase_date_ms,
            _that.original_purchase_date_pst,
            _that.original_transaction_id,
            _that.product_id,
            _that.purchase_date,
            _that.purchase_date_ms,
            _that.purchase_date_pst,
            _that.quantity,
            _that.subscription_group_identifier,
            _that.transaction_id,
            _that.web_order_line_item_id);
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
            String expires_date,
            String expires_date_ms,
            String expires_date_pst,
            String in_app_ownership_type,
            String is_in_intro_offer_period,
            String is_trial_period,
            String original_purchase_date,
            String original_purchase_date_ms,
            String original_purchase_date_pst,
            String original_transaction_id,
            String product_id,
            String purchase_date,
            String purchase_date_ms,
            String purchase_date_pst,
            String quantity,
            String subscription_group_identifier,
            String transaction_id,
            String web_order_line_item_id)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IOSReceiptResponse():
        return $default(
            _that.expires_date,
            _that.expires_date_ms,
            _that.expires_date_pst,
            _that.in_app_ownership_type,
            _that.is_in_intro_offer_period,
            _that.is_trial_period,
            _that.original_purchase_date,
            _that.original_purchase_date_ms,
            _that.original_purchase_date_pst,
            _that.original_transaction_id,
            _that.product_id,
            _that.purchase_date,
            _that.purchase_date_ms,
            _that.purchase_date_pst,
            _that.quantity,
            _that.subscription_group_identifier,
            _that.transaction_id,
            _that.web_order_line_item_id);
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
            String expires_date,
            String expires_date_ms,
            String expires_date_pst,
            String in_app_ownership_type,
            String is_in_intro_offer_period,
            String is_trial_period,
            String original_purchase_date,
            String original_purchase_date_ms,
            String original_purchase_date_pst,
            String original_transaction_id,
            String product_id,
            String purchase_date,
            String purchase_date_ms,
            String purchase_date_pst,
            String quantity,
            String subscription_group_identifier,
            String transaction_id,
            String web_order_line_item_id)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IOSReceiptResponse() when $default != null:
        return $default(
            _that.expires_date,
            _that.expires_date_ms,
            _that.expires_date_pst,
            _that.in_app_ownership_type,
            _that.is_in_intro_offer_period,
            _that.is_trial_period,
            _that.original_purchase_date,
            _that.original_purchase_date_ms,
            _that.original_purchase_date_pst,
            _that.original_transaction_id,
            _that.product_id,
            _that.purchase_date,
            _that.purchase_date_ms,
            _that.purchase_date_pst,
            _that.quantity,
            _that.subscription_group_identifier,
            _that.transaction_id,
            _that.web_order_line_item_id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IOSReceiptResponse extends IOSReceiptResponse {
  const _IOSReceiptResponse(
      {required this.expires_date,
      required this.expires_date_ms,
      required this.expires_date_pst,
      required this.in_app_ownership_type,
      required this.is_in_intro_offer_period,
      required this.is_trial_period,
      required this.original_purchase_date,
      required this.original_purchase_date_ms,
      required this.original_purchase_date_pst,
      required this.original_transaction_id,
      required this.product_id,
      required this.purchase_date,
      required this.purchase_date_ms,
      required this.purchase_date_pst,
      required this.quantity,
      required this.subscription_group_identifier,
      required this.transaction_id,
      required this.web_order_line_item_id})
      : super._();
  factory _IOSReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$IOSReceiptResponseFromJson(json);

  @override
  final String expires_date;
  @override
  final String expires_date_ms;
  @override
  final String expires_date_pst;
  @override
  final String in_app_ownership_type;
  @override
  final String is_in_intro_offer_period;
  @override
  final String is_trial_period;
  @override
  final String original_purchase_date;
  @override
  final String original_purchase_date_ms;
  @override
  final String original_purchase_date_pst;
  @override
  final String original_transaction_id;
  @override
  final String product_id;
  @override
  final String purchase_date;
  @override
  final String purchase_date_ms;
  @override
  final String purchase_date_pst;
  @override
  final String quantity;
  @override
  final String subscription_group_identifier;
  @override
  final String transaction_id;
  @override
  final String web_order_line_item_id;

  /// Create a copy of IOSReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IOSReceiptResponseCopyWith<_IOSReceiptResponse> get copyWith =>
      __$IOSReceiptResponseCopyWithImpl<_IOSReceiptResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IOSReceiptResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IOSReceiptResponse &&
            (identical(other.expires_date, expires_date) ||
                other.expires_date == expires_date) &&
            (identical(other.expires_date_ms, expires_date_ms) ||
                other.expires_date_ms == expires_date_ms) &&
            (identical(other.expires_date_pst, expires_date_pst) ||
                other.expires_date_pst == expires_date_pst) &&
            (identical(other.in_app_ownership_type, in_app_ownership_type) ||
                other.in_app_ownership_type == in_app_ownership_type) &&
            (identical(
                    other.is_in_intro_offer_period, is_in_intro_offer_period) ||
                other.is_in_intro_offer_period == is_in_intro_offer_period) &&
            (identical(other.is_trial_period, is_trial_period) ||
                other.is_trial_period == is_trial_period) &&
            (identical(other.original_purchase_date, original_purchase_date) ||
                other.original_purchase_date == original_purchase_date) &&
            (identical(other.original_purchase_date_ms, original_purchase_date_ms) ||
                other.original_purchase_date_ms == original_purchase_date_ms) &&
            (identical(other.original_purchase_date_pst, original_purchase_date_pst) ||
                other.original_purchase_date_pst ==
                    original_purchase_date_pst) &&
            (identical(other.original_transaction_id, original_transaction_id) ||
                other.original_transaction_id == original_transaction_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.purchase_date, purchase_date) ||
                other.purchase_date == purchase_date) &&
            (identical(other.purchase_date_ms, purchase_date_ms) ||
                other.purchase_date_ms == purchase_date_ms) &&
            (identical(other.purchase_date_pst, purchase_date_pst) ||
                other.purchase_date_pst == purchase_date_pst) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subscription_group_identifier,
                    subscription_group_identifier) ||
                other.subscription_group_identifier ==
                    subscription_group_identifier) &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id) &&
            (identical(other.web_order_line_item_id, web_order_line_item_id) ||
                other.web_order_line_item_id == web_order_line_item_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expires_date,
      expires_date_ms,
      expires_date_pst,
      in_app_ownership_type,
      is_in_intro_offer_period,
      is_trial_period,
      original_purchase_date,
      original_purchase_date_ms,
      original_purchase_date_pst,
      original_transaction_id,
      product_id,
      purchase_date,
      purchase_date_ms,
      purchase_date_pst,
      quantity,
      subscription_group_identifier,
      transaction_id,
      web_order_line_item_id);

  @override
  String toString() {
    return 'IOSReceiptResponse(expires_date: $expires_date, expires_date_ms: $expires_date_ms, expires_date_pst: $expires_date_pst, in_app_ownership_type: $in_app_ownership_type, is_in_intro_offer_period: $is_in_intro_offer_period, is_trial_period: $is_trial_period, original_purchase_date: $original_purchase_date, original_purchase_date_ms: $original_purchase_date_ms, original_purchase_date_pst: $original_purchase_date_pst, original_transaction_id: $original_transaction_id, product_id: $product_id, purchase_date: $purchase_date, purchase_date_ms: $purchase_date_ms, purchase_date_pst: $purchase_date_pst, quantity: $quantity, subscription_group_identifier: $subscription_group_identifier, transaction_id: $transaction_id, web_order_line_item_id: $web_order_line_item_id)';
  }
}

/// @nodoc
abstract mixin class _$IOSReceiptResponseCopyWith<$Res>
    implements $IOSReceiptResponseCopyWith<$Res> {
  factory _$IOSReceiptResponseCopyWith(
          _IOSReceiptResponse value, $Res Function(_IOSReceiptResponse) _then) =
      __$IOSReceiptResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String expires_date,
      String expires_date_ms,
      String expires_date_pst,
      String in_app_ownership_type,
      String is_in_intro_offer_period,
      String is_trial_period,
      String original_purchase_date,
      String original_purchase_date_ms,
      String original_purchase_date_pst,
      String original_transaction_id,
      String product_id,
      String purchase_date,
      String purchase_date_ms,
      String purchase_date_pst,
      String quantity,
      String subscription_group_identifier,
      String transaction_id,
      String web_order_line_item_id});
}

/// @nodoc
class __$IOSReceiptResponseCopyWithImpl<$Res>
    implements _$IOSReceiptResponseCopyWith<$Res> {
  __$IOSReceiptResponseCopyWithImpl(this._self, this._then);

  final _IOSReceiptResponse _self;
  final $Res Function(_IOSReceiptResponse) _then;

  /// Create a copy of IOSReceiptResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? expires_date = null,
    Object? expires_date_ms = null,
    Object? expires_date_pst = null,
    Object? in_app_ownership_type = null,
    Object? is_in_intro_offer_period = null,
    Object? is_trial_period = null,
    Object? original_purchase_date = null,
    Object? original_purchase_date_ms = null,
    Object? original_purchase_date_pst = null,
    Object? original_transaction_id = null,
    Object? product_id = null,
    Object? purchase_date = null,
    Object? purchase_date_ms = null,
    Object? purchase_date_pst = null,
    Object? quantity = null,
    Object? subscription_group_identifier = null,
    Object? transaction_id = null,
    Object? web_order_line_item_id = null,
  }) {
    return _then(_IOSReceiptResponse(
      expires_date: null == expires_date
          ? _self.expires_date
          : expires_date // ignore: cast_nullable_to_non_nullable
              as String,
      expires_date_ms: null == expires_date_ms
          ? _self.expires_date_ms
          : expires_date_ms // ignore: cast_nullable_to_non_nullable
              as String,
      expires_date_pst: null == expires_date_pst
          ? _self.expires_date_pst
          : expires_date_pst // ignore: cast_nullable_to_non_nullable
              as String,
      in_app_ownership_type: null == in_app_ownership_type
          ? _self.in_app_ownership_type
          : in_app_ownership_type // ignore: cast_nullable_to_non_nullable
              as String,
      is_in_intro_offer_period: null == is_in_intro_offer_period
          ? _self.is_in_intro_offer_period
          : is_in_intro_offer_period // ignore: cast_nullable_to_non_nullable
              as String,
      is_trial_period: null == is_trial_period
          ? _self.is_trial_period
          : is_trial_period // ignore: cast_nullable_to_non_nullable
              as String,
      original_purchase_date: null == original_purchase_date
          ? _self.original_purchase_date
          : original_purchase_date // ignore: cast_nullable_to_non_nullable
              as String,
      original_purchase_date_ms: null == original_purchase_date_ms
          ? _self.original_purchase_date_ms
          : original_purchase_date_ms // ignore: cast_nullable_to_non_nullable
              as String,
      original_purchase_date_pst: null == original_purchase_date_pst
          ? _self.original_purchase_date_pst
          : original_purchase_date_pst // ignore: cast_nullable_to_non_nullable
              as String,
      original_transaction_id: null == original_transaction_id
          ? _self.original_transaction_id
          : original_transaction_id // ignore: cast_nullable_to_non_nullable
              as String,
      product_id: null == product_id
          ? _self.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as String,
      purchase_date: null == purchase_date
          ? _self.purchase_date
          : purchase_date // ignore: cast_nullable_to_non_nullable
              as String,
      purchase_date_ms: null == purchase_date_ms
          ? _self.purchase_date_ms
          : purchase_date_ms // ignore: cast_nullable_to_non_nullable
              as String,
      purchase_date_pst: null == purchase_date_pst
          ? _self.purchase_date_pst
          : purchase_date_pst // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      subscription_group_identifier: null == subscription_group_identifier
          ? _self.subscription_group_identifier
          : subscription_group_identifier // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_id: null == transaction_id
          ? _self.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String,
      web_order_line_item_id: null == web_order_line_item_id
          ? _self.web_order_line_item_id
          : web_order_line_item_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
