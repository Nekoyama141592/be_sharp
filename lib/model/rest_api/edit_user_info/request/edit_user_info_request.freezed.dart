// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditUserInfoRequest _$EditUserInfoRequestFromJson(Map<String, dynamic> json) {
  return _EditUserInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$EditUserInfoRequest {
  String get stringNickName => throw _privateConstructorUsedError;
  String get stringBio => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;

  /// Serializes this EditUserInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditUserInfoRequestCopyWith<EditUserInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserInfoRequestCopyWith<$Res> {
  factory $EditUserInfoRequestCopyWith(
          EditUserInfoRequest value, $Res Function(EditUserInfoRequest) then) =
      _$EditUserInfoRequestCopyWithImpl<$Res, EditUserInfoRequest>;
  @useResult
  $Res call({String stringNickName, String stringBio, String object});
}

/// @nodoc
class _$EditUserInfoRequestCopyWithImpl<$Res, $Val extends EditUserInfoRequest>
    implements $EditUserInfoRequestCopyWith<$Res> {
  _$EditUserInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringNickName = null,
    Object? stringBio = null,
    Object? object = null,
  }) {
    return _then(_value.copyWith(
      stringNickName: null == stringNickName
          ? _value.stringNickName
          : stringNickName // ignore: cast_nullable_to_non_nullable
              as String,
      stringBio: null == stringBio
          ? _value.stringBio
          : stringBio // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditUserInfoRequestImplCopyWith<$Res>
    implements $EditUserInfoRequestCopyWith<$Res> {
  factory _$$EditUserInfoRequestImplCopyWith(_$EditUserInfoRequestImpl value,
          $Res Function(_$EditUserInfoRequestImpl) then) =
      __$$EditUserInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stringNickName, String stringBio, String object});
}

/// @nodoc
class __$$EditUserInfoRequestImplCopyWithImpl<$Res>
    extends _$EditUserInfoRequestCopyWithImpl<$Res, _$EditUserInfoRequestImpl>
    implements _$$EditUserInfoRequestImplCopyWith<$Res> {
  __$$EditUserInfoRequestImplCopyWithImpl(_$EditUserInfoRequestImpl _value,
      $Res Function(_$EditUserInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringNickName = null,
    Object? stringBio = null,
    Object? object = null,
  }) {
    return _then(_$EditUserInfoRequestImpl(
      stringNickName: null == stringNickName
          ? _value.stringNickName
          : stringNickName // ignore: cast_nullable_to_non_nullable
              as String,
      stringBio: null == stringBio
          ? _value.stringBio
          : stringBio // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditUserInfoRequestImpl extends _EditUserInfoRequest {
  const _$EditUserInfoRequestImpl(
      {required this.stringNickName,
      required this.stringBio,
      required this.object})
      : super._();

  factory _$EditUserInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditUserInfoRequestImplFromJson(json);

  @override
  final String stringNickName;
  @override
  final String stringBio;
  @override
  final String object;

  @override
  String toString() {
    return 'EditUserInfoRequest(stringNickName: $stringNickName, stringBio: $stringBio, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserInfoRequestImpl &&
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

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserInfoRequestImplCopyWith<_$EditUserInfoRequestImpl> get copyWith =>
      __$$EditUserInfoRequestImplCopyWithImpl<_$EditUserInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditUserInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _EditUserInfoRequest extends EditUserInfoRequest {
  const factory _EditUserInfoRequest(
      {required final String stringNickName,
      required final String stringBio,
      required final String object}) = _$EditUserInfoRequestImpl;
  const _EditUserInfoRequest._() : super._();

  factory _EditUserInfoRequest.fromJson(Map<String, dynamic> json) =
      _$EditUserInfoRequestImpl.fromJson;

  @override
  String get stringNickName;
  @override
  String get stringBio;
  @override
  String get object;

  /// Create a copy of EditUserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUserInfoRequestImplCopyWith<_$EditUserInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
