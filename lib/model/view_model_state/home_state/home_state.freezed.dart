// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  ReadProblem? get latestProblem => throw _privateConstructorUsedError;
  List<AnsweredUser> get answeredUsers => throw _privateConstructorUsedError;
  List<String> get muteUids => throw _privateConstructorUsedError;

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ReadProblem? latestProblem,
      List<AnsweredUser> answeredUsers,
      List<String> muteUids});

  $ReadProblemCopyWith<$Res>? get latestProblem;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestProblem = freezed,
    Object? answeredUsers = null,
    Object? muteUids = null,
  }) {
    return _then(_value.copyWith(
      latestProblem: freezed == latestProblem
          ? _value.latestProblem
          : latestProblem // ignore: cast_nullable_to_non_nullable
              as ReadProblem?,
      answeredUsers: null == answeredUsers
          ? _value.answeredUsers
          : answeredUsers // ignore: cast_nullable_to_non_nullable
              as List<AnsweredUser>,
      muteUids: null == muteUids
          ? _value.muteUids
          : muteUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<$Res>? get latestProblem {
    if (_value.latestProblem == null) {
      return null;
    }

    return $ReadProblemCopyWith<$Res>(_value.latestProblem!, (value) {
      return _then(_value.copyWith(latestProblem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReadProblem? latestProblem,
      List<AnsweredUser> answeredUsers,
      List<String> muteUids});

  @override
  $ReadProblemCopyWith<$Res>? get latestProblem;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestProblem = freezed,
    Object? answeredUsers = null,
    Object? muteUids = null,
  }) {
    return _then(_$HomeStateImpl(
      latestProblem: freezed == latestProblem
          ? _value.latestProblem
          : latestProblem // ignore: cast_nullable_to_non_nullable
              as ReadProblem?,
      answeredUsers: null == answeredUsers
          ? _value._answeredUsers
          : answeredUsers // ignore: cast_nullable_to_non_nullable
              as List<AnsweredUser>,
      muteUids: null == muteUids
          ? _value._muteUids
          : muteUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.latestProblem,
      final List<AnsweredUser> answeredUsers = const [],
      final List<String> muteUids = const []})
      : _answeredUsers = answeredUsers,
        _muteUids = muteUids,
        super._();

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  final ReadProblem? latestProblem;
  final List<AnsweredUser> _answeredUsers;
  @override
  @JsonKey()
  List<AnsweredUser> get answeredUsers {
    if (_answeredUsers is EqualUnmodifiableListView) return _answeredUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answeredUsers);
  }

  final List<String> _muteUids;
  @override
  @JsonKey()
  List<String> get muteUids {
    if (_muteUids is EqualUnmodifiableListView) return _muteUids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_muteUids);
  }

  @override
  String toString() {
    return 'HomeState(latestProblem: $latestProblem, answeredUsers: $answeredUsers, muteUids: $muteUids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.latestProblem, latestProblem) ||
                other.latestProblem == latestProblem) &&
            const DeepCollectionEquality()
                .equals(other._answeredUsers, _answeredUsers) &&
            const DeepCollectionEquality().equals(other._muteUids, _muteUids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latestProblem,
      const DeepCollectionEquality().hash(_answeredUsers),
      const DeepCollectionEquality().hash(_muteUids));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final ReadProblem? latestProblem,
      final List<AnsweredUser> answeredUsers,
      final List<String> muteUids}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  ReadProblem? get latestProblem;
  @override
  List<AnsweredUser> get answeredUsers;
  @override
  List<String> get muteUids;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
