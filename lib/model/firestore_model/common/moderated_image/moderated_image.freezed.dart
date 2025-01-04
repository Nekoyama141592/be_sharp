// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderated_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModeratedImage _$ModeratedImageFromJson(Map<String, dynamic> json) {
  return _ModeratedImage.fromJson(json);
}

/// @nodoc
mixin _$ModeratedImage {
  List<Map<String, dynamic>> get moderationLabels =>
      throw _privateConstructorUsedError;
  String get moderationModelVersion => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeratedImageCopyWith<ModeratedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeratedImageCopyWith<$Res> {
  factory $ModeratedImageCopyWith(
          ModeratedImage value, $Res Function(ModeratedImage) then) =
      _$ModeratedImageCopyWithImpl<$Res, ModeratedImage>;
  @useResult
  $Res call(
      {List<Map<String, dynamic>> moderationLabels,
      String moderationModelVersion,
      String object});
}

/// @nodoc
class _$ModeratedImageCopyWithImpl<$Res, $Val extends ModeratedImage>
    implements $ModeratedImageCopyWith<$Res> {
  _$ModeratedImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moderationLabels = null,
    Object? moderationModelVersion = null,
    Object? object = null,
  }) {
    return _then(_value.copyWith(
      moderationLabels: null == moderationLabels
          ? _value.moderationLabels
          : moderationLabels // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      moderationModelVersion: null == moderationModelVersion
          ? _value.moderationModelVersion
          : moderationModelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModeratedImageImplCopyWith<$Res>
    implements $ModeratedImageCopyWith<$Res> {
  factory _$$ModeratedImageImplCopyWith(_$ModeratedImageImpl value,
          $Res Function(_$ModeratedImageImpl) then) =
      __$$ModeratedImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>> moderationLabels,
      String moderationModelVersion,
      String object});
}

/// @nodoc
class __$$ModeratedImageImplCopyWithImpl<$Res>
    extends _$ModeratedImageCopyWithImpl<$Res, _$ModeratedImageImpl>
    implements _$$ModeratedImageImplCopyWith<$Res> {
  __$$ModeratedImageImplCopyWithImpl(
      _$ModeratedImageImpl _value, $Res Function(_$ModeratedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moderationLabels = null,
    Object? moderationModelVersion = null,
    Object? object = null,
  }) {
    return _then(_$ModeratedImageImpl(
      moderationLabels: null == moderationLabels
          ? _value._moderationLabels
          : moderationLabels // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      moderationModelVersion: null == moderationModelVersion
          ? _value.moderationModelVersion
          : moderationModelVersion // ignore: cast_nullable_to_non_nullable
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
class _$ModeratedImageImpl extends _ModeratedImage {
  const _$ModeratedImageImpl(
      {final List<Map<String, dynamic>> moderationLabels = const [],
      this.moderationModelVersion = '',
      this.object = ''})
      : _moderationLabels = moderationLabels,
        super._();

  factory _$ModeratedImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModeratedImageImplFromJson(json);

  final List<Map<String, dynamic>> _moderationLabels;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get moderationLabels {
    if (_moderationLabels is EqualUnmodifiableListView)
      return _moderationLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moderationLabels);
  }

  @override
  @JsonKey()
  final String moderationModelVersion;
  @override
  @JsonKey()
  final String object;

  @override
  String toString() {
    return 'ModeratedImage(moderationLabels: $moderationLabels, moderationModelVersion: $moderationModelVersion, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModeratedImageImpl &&
            const DeepCollectionEquality()
                .equals(other._moderationLabels, _moderationLabels) &&
            (identical(other.moderationModelVersion, moderationModelVersion) ||
                other.moderationModelVersion == moderationModelVersion) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_moderationLabels),
      moderationModelVersion,
      object);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModeratedImageImplCopyWith<_$ModeratedImageImpl> get copyWith =>
      __$$ModeratedImageImplCopyWithImpl<_$ModeratedImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModeratedImageImplToJson(
      this,
    );
  }
}

abstract class _ModeratedImage extends ModeratedImage {
  const factory _ModeratedImage(
      {final List<Map<String, dynamic>> moderationLabels,
      final String moderationModelVersion,
      final String object}) = _$ModeratedImageImpl;
  const _ModeratedImage._() : super._();

  factory _ModeratedImage.fromJson(Map<String, dynamic> json) =
      _$ModeratedImageImpl.fromJson;

  @override
  List<Map<String, dynamic>> get moderationLabels;
  @override
  String get moderationModelVersion;
  @override
  String get object;
  @override
  @JsonKey(ignore: true)
  _$$ModeratedImageImplCopyWith<_$ModeratedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
