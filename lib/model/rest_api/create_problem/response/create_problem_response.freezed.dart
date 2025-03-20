// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_problem_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProblemResponse _$CreateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateProblemResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateProblemResponse {
  int get status => throw _privateConstructorUsedError;

  /// Serializes this CreateProblemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProblemResponseCopyWith<CreateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemResponseCopyWith<$Res> {
  factory $CreateProblemResponseCopyWith(CreateProblemResponse value,
          $Res Function(CreateProblemResponse) then) =
      _$CreateProblemResponseCopyWithImpl<$Res, CreateProblemResponse>;
  @useResult
  $Res call({int status});
}

/// @nodoc
class _$CreateProblemResponseCopyWithImpl<$Res,
        $Val extends CreateProblemResponse>
    implements $CreateProblemResponseCopyWith<$Res> {
  _$CreateProblemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProblemResponseImplCopyWith<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  factory _$$CreateProblemResponseImplCopyWith(
          _$CreateProblemResponseImpl value,
          $Res Function(_$CreateProblemResponseImpl) then) =
      __$$CreateProblemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status});
}

/// @nodoc
class __$$CreateProblemResponseImplCopyWithImpl<$Res>
    extends _$CreateProblemResponseCopyWithImpl<$Res,
        _$CreateProblemResponseImpl>
    implements _$$CreateProblemResponseImplCopyWith<$Res> {
  __$$CreateProblemResponseImplCopyWithImpl(_$CreateProblemResponseImpl _value,
      $Res Function(_$CreateProblemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CreateProblemResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProblemResponseImpl extends _CreateProblemResponse {
  const _$CreateProblemResponseImpl({required this.status}) : super._();

  factory _$CreateProblemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProblemResponseImplFromJson(json);

  @override
  final int status;

  @override
  String toString() {
    return 'CreateProblemResponse(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProblemResponseImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProblemResponseImplCopyWith<_$CreateProblemResponseImpl>
      get copyWith => __$$CreateProblemResponseImplCopyWithImpl<
          _$CreateProblemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProblemResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateProblemResponse extends CreateProblemResponse {
  const factory _CreateProblemResponse({required final int status}) =
      _$CreateProblemResponseImpl;
  const _CreateProblemResponse._() : super._();

  factory _CreateProblemResponse.fromJson(Map<String, dynamic> json) =
      _$CreateProblemResponseImpl.fromJson;

  @override
  int get status;

  /// Create a copy of CreateProblemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProblemResponseImplCopyWith<_$CreateProblemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
