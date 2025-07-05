// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditUserInfoRequest {
  String get stringNickName;
  String get stringBio;
  String get object;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditUserInfoRequestCopyWith<EditUserInfoRequest> get copyWith =>
      _$EditUserInfoRequestCopyWithImpl<EditUserInfoRequest>(
          this as EditUserInfoRequest, _$identity);

  /// Serializes this EditUserInfoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditUserInfoRequest &&
            (identical(other.stringNickName, stringNickName) ||
                other.stringNickName == stringNickName) &&
            (identical(other.stringBio, stringBio) ||
                other.stringBio == stringBio) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stringNickName, stringBio, object);

  @override
  String toString() {
    return 'EditUserInfoRequest(stringNickName: $stringNickName, stringBio: $stringBio, object: $object)';
  }
}

/// @nodoc
abstract mixin class $EditUserInfoRequestCopyWith<$Res> {
  factory $EditUserInfoRequestCopyWith(
          EditUserInfoRequest value, $Res Function(EditUserInfoRequest) _then) =
      _$EditUserInfoRequestCopyWithImpl;
  @useResult
  $Res call({String stringNickName, String stringBio, String object});
}

/// @nodoc
class _$EditUserInfoRequestCopyWithImpl<$Res>
    implements $EditUserInfoRequestCopyWith<$Res> {
  _$EditUserInfoRequestCopyWithImpl(this._self, this._then);

  final EditUserInfoRequest _self;
  final $Res Function(EditUserInfoRequest) _then;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringNickName = null,
    Object? stringBio = null,
    Object? object = null,
  }) {
    return _then(_self.copyWith(
      stringNickName: null == stringNickName
          ? _self.stringNickName
          : stringNickName // ignore: cast_nullable_to_non_nullable
              as String,
      stringBio: null == stringBio
          ? _self.stringBio
          : stringBio // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EditUserInfoRequest].
extension EditUserInfoRequestPatterns on EditUserInfoRequest {
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
    TResult Function(_EditUserInfoRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditUserInfoRequest() when $default != null:
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
    TResult Function(_EditUserInfoRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserInfoRequest():
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
    TResult? Function(_EditUserInfoRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserInfoRequest() when $default != null:
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
    TResult Function(String stringNickName, String stringBio, String object)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EditUserInfoRequest() when $default != null:
        return $default(_that.stringNickName, _that.stringBio, _that.object);
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
    TResult Function(String stringNickName, String stringBio, String object)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserInfoRequest():
        return $default(_that.stringNickName, _that.stringBio, _that.object);
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
    TResult? Function(String stringNickName, String stringBio, String object)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EditUserInfoRequest() when $default != null:
        return $default(_that.stringNickName, _that.stringBio, _that.object);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EditUserInfoRequest extends EditUserInfoRequest {
  const _EditUserInfoRequest(
      {required this.stringNickName,
      required this.stringBio,
      required this.object})
      : super._();
  factory _EditUserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$EditUserInfoRequestFromJson(json);

  @override
  final String stringNickName;
  @override
  final String stringBio;
  @override
  final String object;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditUserInfoRequestCopyWith<_EditUserInfoRequest> get copyWith =>
      __$EditUserInfoRequestCopyWithImpl<_EditUserInfoRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditUserInfoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditUserInfoRequest &&
            (identical(other.stringNickName, stringNickName) ||
                other.stringNickName == stringNickName) &&
            (identical(other.stringBio, stringBio) ||
                other.stringBio == stringBio) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stringNickName, stringBio, object);

  @override
  String toString() {
    return 'EditUserInfoRequest(stringNickName: $stringNickName, stringBio: $stringBio, object: $object)';
  }
}

/// @nodoc
abstract mixin class _$EditUserInfoRequestCopyWith<$Res>
    implements $EditUserInfoRequestCopyWith<$Res> {
  factory _$EditUserInfoRequestCopyWith(_EditUserInfoRequest value,
          $Res Function(_EditUserInfoRequest) _then) =
      __$EditUserInfoRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String stringNickName, String stringBio, String object});
}

/// @nodoc
class __$EditUserInfoRequestCopyWithImpl<$Res>
    implements _$EditUserInfoRequestCopyWith<$Res> {
  __$EditUserInfoRequestCopyWithImpl(this._self, this._then);

  final _EditUserInfoRequest _self;
  final $Res Function(_EditUserInfoRequest) _then;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stringNickName = null,
    Object? stringBio = null,
    Object? object = null,
  }) {
    return _then(_EditUserInfoRequest(
      stringNickName: null == stringNickName
          ? _self.stringNickName
          : stringNickName // ignore: cast_nullable_to_non_nullable
              as String,
      stringBio: null == stringBio
          ? _self.stringBio
          : stringBio // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
