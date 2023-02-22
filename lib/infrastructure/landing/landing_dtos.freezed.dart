// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landing_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LandingDto _$LandingDtoFromJson(Map<String, dynamic> json) {
  return _LandingDto.fromJson(json);
}

/// @nodoc
mixin _$LandingDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandingDtoCopyWith<LandingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingDtoCopyWith<$Res> {
  factory $LandingDtoCopyWith(
          LandingDto value, $Res Function(LandingDto) then) =
      _$LandingDtoCopyWithImpl<$Res, LandingDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'image') String imageUrl});
}

/// @nodoc
class _$LandingDtoCopyWithImpl<$Res, $Val extends LandingDto>
    implements $LandingDtoCopyWith<$Res> {
  _$LandingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandingDtoCopyWith<$Res>
    implements $LandingDtoCopyWith<$Res> {
  factory _$$_LandingDtoCopyWith(
          _$_LandingDto value, $Res Function(_$_LandingDto) then) =
      __$$_LandingDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'image') String imageUrl});
}

/// @nodoc
class __$$_LandingDtoCopyWithImpl<$Res>
    extends _$LandingDtoCopyWithImpl<$Res, _$_LandingDto>
    implements _$$_LandingDtoCopyWith<$Res> {
  __$$_LandingDtoCopyWithImpl(
      _$_LandingDto _value, $Res Function(_$_LandingDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_LandingDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LandingDto extends _LandingDto {
  const _$_LandingDto(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image') required this.imageUrl})
      : super._();

  factory _$_LandingDto.fromJson(Map<String, dynamic> json) =>
      _$$_LandingDtoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'image')
  final String imageUrl;

  @override
  String toString() {
    return 'LandingDto(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LandingDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandingDtoCopyWith<_$_LandingDto> get copyWith =>
      __$$_LandingDtoCopyWithImpl<_$_LandingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LandingDtoToJson(
      this,
    );
  }
}

abstract class _LandingDto extends LandingDto {
  const factory _LandingDto(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'image') required final String imageUrl}) = _$_LandingDto;
  const _LandingDto._() : super._();

  factory _LandingDto.fromJson(Map<String, dynamic> json) =
      _$_LandingDto.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'image')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_LandingDtoCopyWith<_$_LandingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
