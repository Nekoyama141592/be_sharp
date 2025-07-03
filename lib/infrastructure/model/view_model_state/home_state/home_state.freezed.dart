// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  ReadProblem? get latestProblem;
  List<AnsweredUser> get answeredUsers;
  List<String> get muteUids;
  int get userCount;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.latestProblem, latestProblem) ||
                other.latestProblem == latestProblem) &&
            const DeepCollectionEquality()
                .equals(other.answeredUsers, answeredUsers) &&
            const DeepCollectionEquality().equals(other.muteUids, muteUids) &&
            (identical(other.userCount, userCount) ||
                other.userCount == userCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latestProblem,
      const DeepCollectionEquality().hash(answeredUsers),
      const DeepCollectionEquality().hash(muteUids),
      userCount);

  @override
  String toString() {
    return 'HomeState(latestProblem: $latestProblem, answeredUsers: $answeredUsers, muteUids: $muteUids, userCount: $userCount)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {ReadProblem? latestProblem,
      List<AnsweredUser> answeredUsers,
      List<String> muteUids,
      int userCount});

  $ReadProblemCopyWith<$Res>? get latestProblem;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestProblem = freezed,
    Object? answeredUsers = null,
    Object? muteUids = null,
    Object? userCount = null,
  }) {
    return _then(_self.copyWith(
      latestProblem: freezed == latestProblem
          ? _self.latestProblem
          : latestProblem // ignore: cast_nullable_to_non_nullable
              as ReadProblem?,
      answeredUsers: null == answeredUsers
          ? _self.answeredUsers
          : answeredUsers // ignore: cast_nullable_to_non_nullable
              as List<AnsweredUser>,
      muteUids: null == muteUids
          ? _self.muteUids
          : muteUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userCount: null == userCount
          ? _self.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<$Res>? get latestProblem {
    if (_self.latestProblem == null) {
      return null;
    }

    return $ReadProblemCopyWith<$Res>(_self.latestProblem!, (value) {
      return _then(_self.copyWith(latestProblem: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _HomeState extends HomeState {
  const _HomeState(
      {this.latestProblem,
      final List<AnsweredUser> answeredUsers = const [],
      final List<String> muteUids = const [],
      this.userCount = 0})
      : _answeredUsers = answeredUsers,
        _muteUids = muteUids,
        super._();
  factory _HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);

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
  @JsonKey()
  final int userCount;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.latestProblem, latestProblem) ||
                other.latestProblem == latestProblem) &&
            const DeepCollectionEquality()
                .equals(other._answeredUsers, _answeredUsers) &&
            const DeepCollectionEquality().equals(other._muteUids, _muteUids) &&
            (identical(other.userCount, userCount) ||
                other.userCount == userCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latestProblem,
      const DeepCollectionEquality().hash(_answeredUsers),
      const DeepCollectionEquality().hash(_muteUids),
      userCount);

  @override
  String toString() {
    return 'HomeState(latestProblem: $latestProblem, answeredUsers: $answeredUsers, muteUids: $muteUids, userCount: $userCount)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ReadProblem? latestProblem,
      List<AnsweredUser> answeredUsers,
      List<String> muteUids,
      int userCount});

  @override
  $ReadProblemCopyWith<$Res>? get latestProblem;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latestProblem = freezed,
    Object? answeredUsers = null,
    Object? muteUids = null,
    Object? userCount = null,
  }) {
    return _then(_HomeState(
      latestProblem: freezed == latestProblem
          ? _self.latestProblem
          : latestProblem // ignore: cast_nullable_to_non_nullable
              as ReadProblem?,
      answeredUsers: null == answeredUsers
          ? _self._answeredUsers
          : answeredUsers // ignore: cast_nullable_to_non_nullable
              as List<AnsweredUser>,
      muteUids: null == muteUids
          ? _self._muteUids
          : muteUids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userCount: null == userCount
          ? _self.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadProblemCopyWith<$Res>? get latestProblem {
    if (_self.latestProblem == null) {
      return null;
    }

    return $ReadProblemCopyWith<$Res>(_self.latestProblem!, (value) {
      return _then(_self.copyWith(latestProblem: value));
    });
  }
}

// dart format on
