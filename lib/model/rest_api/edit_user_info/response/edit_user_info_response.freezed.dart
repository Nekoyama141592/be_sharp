// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditUserInfoResponse {
  DetectedText get nickName;
  DetectedText get bio;
  ModeratedImage get image;

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditUserInfoResponseCopyWith<EditUserInfoResponse> get copyWith =>
      _$EditUserInfoResponseCopyWithImpl<EditUserInfoResponse>(
          this as EditUserInfoResponse, _$identity);

  /// Serializes this EditUserInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditUserInfoResponse &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName, bio, image);

  @override
  String toString() {
    return 'EditUserInfoResponse(nickName: $nickName, bio: $bio, image: $image)';
  }
}

/// @nodoc
abstract mixin class $EditUserInfoResponseCopyWith<$Res> {
  factory $EditUserInfoResponseCopyWith(EditUserInfoResponse value,
          $Res Function(EditUserInfoResponse) _then) =
      _$EditUserInfoResponseCopyWithImpl;
  @useResult
  $Res call({DetectedText nickName, DetectedText bio, ModeratedImage image});

  $DetectedTextCopyWith<$Res> get nickName;
  $DetectedTextCopyWith<$Res> get bio;
  $ModeratedImageCopyWith<$Res> get image;
}

/// @nodoc
class _$EditUserInfoResponseCopyWithImpl<$Res>
    implements $EditUserInfoResponseCopyWith<$Res> {
  _$EditUserInfoResponseCopyWithImpl(this._self, this._then);

  final EditUserInfoResponse _self;
  final $Res Function(EditUserInfoResponse) _then;

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
    Object? bio = null,
    Object? image = null,
  }) {
    return _then(_self.copyWith(
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as ModeratedImage,
    ));
  }

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get nickName {
    return $DetectedTextCopyWith<$Res>(_self.nickName, (value) {
      return _then(_self.copyWith(nickName: value));
    });
  }

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get bio {
    return $DetectedTextCopyWith<$Res>(_self.bio, (value) {
      return _then(_self.copyWith(bio: value));
    });
  }

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModeratedImageCopyWith<$Res> get image {
    return $ModeratedImageCopyWith<$Res>(_self.image, (value) {
      return _then(_self.copyWith(image: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EditUserInfoResponse implements EditUserInfoResponse {
  const _EditUserInfoResponse(
      {required this.nickName, required this.bio, required this.image});
  factory _EditUserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUserInfoResponseFromJson(json);

  @override
  final DetectedText nickName;
  @override
  final DetectedText bio;
  @override
  final ModeratedImage image;

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditUserInfoResponseCopyWith<_EditUserInfoResponse> get copyWith =>
      __$EditUserInfoResponseCopyWithImpl<_EditUserInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EditUserInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditUserInfoResponse &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName, bio, image);

  @override
  String toString() {
    return 'EditUserInfoResponse(nickName: $nickName, bio: $bio, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$EditUserInfoResponseCopyWith<$Res>
    implements $EditUserInfoResponseCopyWith<$Res> {
  factory _$EditUserInfoResponseCopyWith(_EditUserInfoResponse value,
          $Res Function(_EditUserInfoResponse) _then) =
      __$EditUserInfoResponseCopyWithImpl;
  @override
  @useResult
  $Res call({DetectedText nickName, DetectedText bio, ModeratedImage image});

  @override
  $DetectedTextCopyWith<$Res> get nickName;
  @override
  $DetectedTextCopyWith<$Res> get bio;
  @override
  $ModeratedImageCopyWith<$Res> get image;
}

/// @nodoc
class __$EditUserInfoResponseCopyWithImpl<$Res>
    implements _$EditUserInfoResponseCopyWith<$Res> {
  __$EditUserInfoResponseCopyWithImpl(this._self, this._then);

  final _EditUserInfoResponse _self;
  final $Res Function(_EditUserInfoResponse) _then;

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nickName = null,
    Object? bio = null,
    Object? image = null,
  }) {
    return _then(_EditUserInfoResponse(
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as DetectedText,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as ModeratedImage,
    ));
  }

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get nickName {
    return $DetectedTextCopyWith<$Res>(_self.nickName, (value) {
      return _then(_self.copyWith(nickName: value));
    });
  }

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedTextCopyWith<$Res> get bio {
    return $DetectedTextCopyWith<$Res>(_self.bio, (value) {
      return _then(_self.copyWith(bio: value));
    });
  }

  /// Create a copy of EditUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModeratedImageCopyWith<$Res> get image {
    return $ModeratedImageCopyWith<$Res>(_self.image, (value) {
      return _then(_self.copyWith(image: value));
    });
  }
}

// dart format on
