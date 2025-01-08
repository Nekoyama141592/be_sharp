// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditUserInfoResponse _$EditUserInfoResponseFromJson(Map<String, dynamic> json) {
  return _EditUserInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$EditUserInfoResponse {
  DetectedText get nickName => throw _privateConstructorUsedError;
  DetectedText get bio => throw _privateConstructorUsedError;
  ModeratedImage get image => throw _privateConstructorUsedError;
  dynamic get birthDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditUserInfoResponseCopyWith<EditUserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserInfoResponseCopyWith<$Res> {
  factory $EditUserInfoResponseCopyWith(EditUserInfoResponse value,
          $Res Function(EditUserInfoResponse) then) =
      _$EditUserInfoResponseCopyWithImpl<$Res, EditUserInfoResponse>;
  @useResult
  $Res call(
      {DetectedText nickName,
      DetectedText bio,
      ModeratedImage image,
      dynamic birthDate});

  $DetectedTextCopyWith<$Res> get nickName;
  $DetectedTextCopyWith<$Res> get bio;
  $ModeratedImageCopyWith<$Res> get image;
}

/// @nodoc
class _$EditUserInfoResponseCopyWithImpl<$Res,
        $Val extends EditUserInfoResponse>
    implements $EditUserInfoResponseCopyWith<$Res> {
  _$EditUserInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? bio = null,
    Object? image = null,
    Object? birthDate = freezed,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ModeratedImage,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get nickName {
    return $DetectedTextCopyWith<$Res>(_value.nickName, (value) {
      return _then(_value.copyWith(nickName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get bio {
    return $DetectedTextCopyWith<$Res>(_value.bio, (value) {
      return _then(_value.copyWith(bio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ModeratedImageCopyWith<$Res> get image {
    return $ModeratedImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditUserInfoResponseImplCopyWith<$Res>
    implements $EditUserInfoResponseCopyWith<$Res> {
  factory _$$EditUserInfoResponseImplCopyWith(_$EditUserInfoResponseImpl value,
          $Res Function(_$EditUserInfoResponseImpl) then) =
      __$$EditUserInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetectedText nickName,
      DetectedText bio,
      ModeratedImage image,
      dynamic birthDate});

  @override
  $DetectedTextCopyWith<$Res> get nickName;
  @override
  $DetectedTextCopyWith<$Res> get bio;
  @override
  $ModeratedImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$EditUserInfoResponseImplCopyWithImpl<$Res>
    extends _$EditUserInfoResponseCopyWithImpl<$Res, _$EditUserInfoResponseImpl>
    implements _$$EditUserInfoResponseImplCopyWith<$Res> {
  __$$EditUserInfoResponseImplCopyWithImpl(_$EditUserInfoResponseImpl _value,
      $Res Function(_$EditUserInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? bio = null,
    Object? image = null,
    Object? birthDate = freezed,
  }) {
    return _then(_$EditUserInfoResponseImpl(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ModeratedImage,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditUserInfoResponseImpl implements _EditUserInfoResponse {
  const _$EditUserInfoResponseImpl(
      {required this.nickName,
      required this.bio,
      required this.image,
      required this.birthDate});

  factory _$EditUserInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditUserInfoResponseImplFromJson(json);

  @override
  final DetectedText nickName;
  @override
  final DetectedText bio;
  @override
  final ModeratedImage image;
  @override
  final dynamic birthDate;

  @override
  String toString() {
    return 'EditUserInfoResponse(nickName: $nickName, bio: $bio, image: $image, birthDate: $birthDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserInfoResponseImpl &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickName, bio, image,
      const DeepCollectionEquality().hash(birthDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserInfoResponseImplCopyWith<_$EditUserInfoResponseImpl>
      get copyWith =>
          __$$EditUserInfoResponseImplCopyWithImpl<_$EditUserInfoResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditUserInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _EditUserInfoResponse implements EditUserInfoResponse {
  const factory _EditUserInfoResponse(
      {required final DetectedText nickName,
      required final DetectedText bio,
      required final ModeratedImage image,
      required final dynamic birthDate}) = _$EditUserInfoResponseImpl;

  factory _EditUserInfoResponse.fromJson(Map<String, dynamic> json) =
      _$EditUserInfoResponseImpl.fromJson;

  @override
  DetectedText get nickName;
  @override
  DetectedText get bio;
  @override
  ModeratedImage get image;
  @override
  dynamic get birthDate;
  @override
  @JsonKey(ignore: true)
  _$$EditUserInfoResponseImplCopyWith<_$EditUserInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
