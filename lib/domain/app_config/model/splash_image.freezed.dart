// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashImage {
  StringVO get splashUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashImageCopyWith<SplashImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashImageCopyWith<$Res> {
  factory $SplashImageCopyWith(
          SplashImage value, $Res Function(SplashImage) then) =
      _$SplashImageCopyWithImpl<$Res, SplashImage>;
  @useResult
  $Res call({StringVO splashUrl});
}

/// @nodoc
class _$SplashImageCopyWithImpl<$Res, $Val extends SplashImage>
    implements $SplashImageCopyWith<$Res> {
  _$SplashImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashUrl = null,
  }) {
    return _then(_value.copyWith(
      splashUrl: null == splashUrl
          ? _value.splashUrl
          : splashUrl // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashImageCopyWith<$Res>
    implements $SplashImageCopyWith<$Res> {
  factory _$$_SplashImageCopyWith(
          _$_SplashImage value, $Res Function(_$_SplashImage) then) =
      __$$_SplashImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO splashUrl});
}

/// @nodoc
class __$$_SplashImageCopyWithImpl<$Res>
    extends _$SplashImageCopyWithImpl<$Res, _$_SplashImage>
    implements _$$_SplashImageCopyWith<$Res> {
  __$$_SplashImageCopyWithImpl(
      _$_SplashImage _value, $Res Function(_$_SplashImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashUrl = null,
  }) {
    return _then(_$_SplashImage(
      splashUrl: null == splashUrl
          ? _value.splashUrl
          : splashUrl // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_SplashImage extends _SplashImage {
  const _$_SplashImage({required this.splashUrl}) : super._();

  @override
  final StringVO splashUrl;

  @override
  String toString() {
    return 'SplashImage(splashUrl: $splashUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashImage &&
            (identical(other.splashUrl, splashUrl) ||
                other.splashUrl == splashUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, splashUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashImageCopyWith<_$_SplashImage> get copyWith =>
      __$$_SplashImageCopyWithImpl<_$_SplashImage>(this, _$identity);
}

abstract class _SplashImage extends SplashImage {
  const factory _SplashImage({required final StringVO splashUrl}) =
      _$_SplashImage;
  const _SplashImage._() : super._();

  @override
  StringVO get splashUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SplashImageCopyWith<_$_SplashImage> get copyWith =>
      throw _privateConstructorUsedError;
}
