// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckState _$CheckStateFromJson(Map<String, dynamic> json) {
  return _CheckState.fromJson(json);
}

/// @nodoc
mixin _$CheckState {
  bool get needsAgreeToTerms => throw _privateConstructorUsedError;
  bool get needsSignup => throw _privateConstructorUsedError;
  bool get needsEditUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckStateCopyWith<CheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStateCopyWith<$Res> {
  factory $CheckStateCopyWith(
          CheckState value, $Res Function(CheckState) then) =
      _$CheckStateCopyWithImpl<$Res, CheckState>;
  @useResult
  $Res call({bool needsAgreeToTerms, bool needsSignup, bool needsEditUser});
}

/// @nodoc
class _$CheckStateCopyWithImpl<$Res, $Val extends CheckState>
    implements $CheckStateCopyWith<$Res> {
  _$CheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needsAgreeToTerms = null,
    Object? needsSignup = null,
    Object? needsEditUser = null,
  }) {
    return _then(_value.copyWith(
      needsAgreeToTerms: null == needsAgreeToTerms
          ? _value.needsAgreeToTerms
          : needsAgreeToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      needsSignup: null == needsSignup
          ? _value.needsSignup
          : needsSignup // ignore: cast_nullable_to_non_nullable
              as bool,
      needsEditUser: null == needsEditUser
          ? _value.needsEditUser
          : needsEditUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckStateImplCopyWith<$Res>
    implements $CheckStateCopyWith<$Res> {
  factory _$$CheckStateImplCopyWith(
          _$CheckStateImpl value, $Res Function(_$CheckStateImpl) then) =
      __$$CheckStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool needsAgreeToTerms, bool needsSignup, bool needsEditUser});
}

/// @nodoc
class __$$CheckStateImplCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$CheckStateImpl>
    implements _$$CheckStateImplCopyWith<$Res> {
  __$$CheckStateImplCopyWithImpl(
      _$CheckStateImpl _value, $Res Function(_$CheckStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needsAgreeToTerms = null,
    Object? needsSignup = null,
    Object? needsEditUser = null,
  }) {
    return _then(_$CheckStateImpl(
      needsAgreeToTerms: null == needsAgreeToTerms
          ? _value.needsAgreeToTerms
          : needsAgreeToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      needsSignup: null == needsSignup
          ? _value.needsSignup
          : needsSignup // ignore: cast_nullable_to_non_nullable
              as bool,
      needsEditUser: null == needsEditUser
          ? _value.needsEditUser
          : needsEditUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckStateImpl extends _CheckState {
  const _$CheckStateImpl(
      {required this.needsAgreeToTerms,
      required this.needsSignup,
      required this.needsEditUser})
      : super._();

  factory _$CheckStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckStateImplFromJson(json);

  @override
  final bool needsAgreeToTerms;
  @override
  final bool needsSignup;
  @override
  final bool needsEditUser;

  @override
  String toString() {
    return 'CheckState(needsAgreeToTerms: $needsAgreeToTerms, needsSignup: $needsSignup, needsEditUser: $needsEditUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckStateImpl &&
            (identical(other.needsAgreeToTerms, needsAgreeToTerms) ||
                other.needsAgreeToTerms == needsAgreeToTerms) &&
            (identical(other.needsSignup, needsSignup) ||
                other.needsSignup == needsSignup) &&
            (identical(other.needsEditUser, needsEditUser) ||
                other.needsEditUser == needsEditUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, needsAgreeToTerms, needsSignup, needsEditUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckStateImplCopyWith<_$CheckStateImpl> get copyWith =>
      __$$CheckStateImplCopyWithImpl<_$CheckStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckStateImplToJson(
      this,
    );
  }
}

abstract class _CheckState extends CheckState {
  const factory _CheckState(
      {required final bool needsAgreeToTerms,
      required final bool needsSignup,
      required final bool needsEditUser}) = _$CheckStateImpl;
  const _CheckState._() : super._();

  factory _CheckState.fromJson(Map<String, dynamic> json) =
      _$CheckStateImpl.fromJson;

  @override
  bool get needsAgreeToTerms;
  @override
  bool get needsSignup;
  @override
  bool get needsEditUser;
  @override
  @JsonKey(ignore: true)
  _$$CheckStateImplCopyWith<_$CheckStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
