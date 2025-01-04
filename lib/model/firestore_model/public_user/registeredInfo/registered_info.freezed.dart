// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registered_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisteredInfo _$RegisteredInfoFromJson(Map<String, dynamic> json) {
  return _RegisteredInfo.fromJson(json);
}

/// @nodoc
mixin _$RegisteredInfo {
  Map<String, dynamic> get nickName => throw _privateConstructorUsedError;
  Map<String, dynamic> get bio => throw _privateConstructorUsedError;
  dynamic get birthDate => throw _privateConstructorUsedError;
  Map<String, dynamic> get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredInfoCopyWith<RegisteredInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredInfoCopyWith<$Res> {
  factory $RegisteredInfoCopyWith(
          RegisteredInfo value, $Res Function(RegisteredInfo) then) =
      _$RegisteredInfoCopyWithImpl<$Res, RegisteredInfo>;
  @useResult
  $Res call(
      {Map<String, dynamic> nickName,
      Map<String, dynamic> bio,
      dynamic birthDate,
      Map<String, dynamic> image});
}

/// @nodoc
class _$RegisteredInfoCopyWithImpl<$Res, $Val extends RegisteredInfo>
    implements $RegisteredInfoCopyWith<$Res> {
  _$RegisteredInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? bio = null,
    Object? birthDate = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisteredInfoImplCopyWith<$Res>
    implements $RegisteredInfoCopyWith<$Res> {
  factory _$$RegisteredInfoImplCopyWith(_$RegisteredInfoImpl value,
          $Res Function(_$RegisteredInfoImpl) then) =
      __$$RegisteredInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> nickName,
      Map<String, dynamic> bio,
      dynamic birthDate,
      Map<String, dynamic> image});
}

/// @nodoc
class __$$RegisteredInfoImplCopyWithImpl<$Res>
    extends _$RegisteredInfoCopyWithImpl<$Res, _$RegisteredInfoImpl>
    implements _$$RegisteredInfoImplCopyWith<$Res> {
  __$$RegisteredInfoImplCopyWithImpl(
      _$RegisteredInfoImpl _value, $Res Function(_$RegisteredInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? bio = null,
    Object? birthDate = freezed,
    Object? image = null,
  }) {
    return _then(_$RegisteredInfoImpl(
      nickName: null == nickName
          ? _value._nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      bio: null == bio
          ? _value._bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisteredInfoImpl extends _RegisteredInfo {
  const _$RegisteredInfoImpl(
      {final Map<String, dynamic> nickName = const {},
      final Map<String, dynamic> bio = const {},
      required this.birthDate,
      final Map<String, dynamic> image = const {}})
      : _nickName = nickName,
        _bio = bio,
        _image = image,
        super._();

  factory _$RegisteredInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisteredInfoImplFromJson(json);

  final Map<String, dynamic> _nickName;
  @override
  @JsonKey()
  Map<String, dynamic> get nickName {
    if (_nickName is EqualUnmodifiableMapView) return _nickName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_nickName);
  }

  final Map<String, dynamic> _bio;
  @override
  @JsonKey()
  Map<String, dynamic> get bio {
    if (_bio is EqualUnmodifiableMapView) return _bio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bio);
  }

  @override
  final dynamic birthDate;
  final Map<String, dynamic> _image;
  @override
  @JsonKey()
  Map<String, dynamic> get image {
    if (_image is EqualUnmodifiableMapView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_image);
  }

  @override
  String toString() {
    return 'RegisteredInfo(nickName: $nickName, bio: $bio, birthDate: $birthDate, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredInfoImpl &&
            const DeepCollectionEquality().equals(other._nickName, _nickName) &&
            const DeepCollectionEquality().equals(other._bio, _bio) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nickName),
      const DeepCollectionEquality().hash(_bio),
      const DeepCollectionEquality().hash(birthDate),
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredInfoImplCopyWith<_$RegisteredInfoImpl> get copyWith =>
      __$$RegisteredInfoImplCopyWithImpl<_$RegisteredInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisteredInfoImplToJson(
      this,
    );
  }
}

abstract class _RegisteredInfo extends RegisteredInfo {
  const factory _RegisteredInfo(
      {final Map<String, dynamic> nickName,
      final Map<String, dynamic> bio,
      required final dynamic birthDate,
      final Map<String, dynamic> image}) = _$RegisteredInfoImpl;
  const _RegisteredInfo._() : super._();

  factory _RegisteredInfo.fromJson(Map<String, dynamic> json) =
      _$RegisteredInfoImpl.fromJson;

  @override
  Map<String, dynamic> get nickName;
  @override
  Map<String, dynamic> get bio;
  @override
  dynamic get birthDate;
  @override
  Map<String, dynamic> get image;
  @override
  @JsonKey(ignore: true)
  _$$RegisteredInfoImplCopyWith<_$RegisteredInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
