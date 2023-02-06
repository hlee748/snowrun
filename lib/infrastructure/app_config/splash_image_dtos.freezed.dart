// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_image_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SplashImageDto _$SplashImageDtoFromJson(Map<String, dynamic> json) {
  return _SplashImageDto.fromJson(json);
}

/// @nodoc
mixin _$SplashImageDto {
  @JsonKey(name: 'splashImage')
  String get splashImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplashImageDtoCopyWith<SplashImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashImageDtoCopyWith<$Res> {
  factory $SplashImageDtoCopyWith(
          SplashImageDto value, $Res Function(SplashImageDto) then) =
      _$SplashImageDtoCopyWithImpl<$Res, SplashImageDto>;
  @useResult
  $Res call({@JsonKey(name: 'splashImage') String splashImage});
}

/// @nodoc
class _$SplashImageDtoCopyWithImpl<$Res, $Val extends SplashImageDto>
    implements $SplashImageDtoCopyWith<$Res> {
  _$SplashImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashImage = null,
  }) {
    return _then(_value.copyWith(
      splashImage: null == splashImage
          ? _value.splashImage
          : splashImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashImageDtoCopyWith<$Res>
    implements $SplashImageDtoCopyWith<$Res> {
  factory _$$_SplashImageDtoCopyWith(
          _$_SplashImageDto value, $Res Function(_$_SplashImageDto) then) =
      __$$_SplashImageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'splashImage') String splashImage});
}

/// @nodoc
class __$$_SplashImageDtoCopyWithImpl<$Res>
    extends _$SplashImageDtoCopyWithImpl<$Res, _$_SplashImageDto>
    implements _$$_SplashImageDtoCopyWith<$Res> {
  __$$_SplashImageDtoCopyWithImpl(
      _$_SplashImageDto _value, $Res Function(_$_SplashImageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashImage = null,
  }) {
    return _then(_$_SplashImageDto(
      splashImage: null == splashImage
          ? _value.splashImage
          : splashImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SplashImageDto extends _SplashImageDto {
  const _$_SplashImageDto(
      {@JsonKey(name: 'splashImage') required this.splashImage})
      : super._();

  factory _$_SplashImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_SplashImageDtoFromJson(json);

  @override
  @JsonKey(name: 'splashImage')
  final String splashImage;

  @override
  String toString() {
    return 'SplashImageDto(splashImage: $splashImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashImageDto &&
            (identical(other.splashImage, splashImage) ||
                other.splashImage == splashImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, splashImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashImageDtoCopyWith<_$_SplashImageDto> get copyWith =>
      __$$_SplashImageDtoCopyWithImpl<_$_SplashImageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SplashImageDtoToJson(
      this,
    );
  }
}

abstract class _SplashImageDto extends SplashImageDto {
  const factory _SplashImageDto(
          {@JsonKey(name: 'splashImage') required final String splashImage}) =
      _$_SplashImageDto;
  const _SplashImageDto._() : super._();

  factory _SplashImageDto.fromJson(Map<String, dynamic> json) =
      _$_SplashImageDto.fromJson;

  @override
  @JsonKey(name: 'splashImage')
  String get splashImage;
  @override
  @JsonKey(ignore: true)
  _$$_SplashImageDtoCopyWith<_$_SplashImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
