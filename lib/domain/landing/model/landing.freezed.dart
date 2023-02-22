// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Landing {
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingCopyWith<Landing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingCopyWith<$Res> {
  factory $LandingCopyWith(Landing value, $Res Function(Landing) then) =
      _$LandingCopyWithImpl<$Res, Landing>;
  @useResult
  $Res call({StringVO title, StringVO imageUrl});
}

/// @nodoc
class _$LandingCopyWithImpl<$Res, $Val extends Landing>
    implements $LandingCopyWith<$Res> {
  _$LandingCopyWithImpl(this._value, this._then);

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
              as StringVO,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandingCopyWith<$Res> implements $LandingCopyWith<$Res> {
  factory _$$_LandingCopyWith(
          _$_Landing value, $Res Function(_$_Landing) then) =
      __$$_LandingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO title, StringVO imageUrl});
}

/// @nodoc
class __$$_LandingCopyWithImpl<$Res>
    extends _$LandingCopyWithImpl<$Res, _$_Landing>
    implements _$$_LandingCopyWith<$Res> {
  __$$_LandingCopyWithImpl(_$_Landing _value, $Res Function(_$_Landing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_Landing(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_Landing extends _Landing {
  const _$_Landing({required this.title, required this.imageUrl}) : super._();

  @override
  final StringVO title;
  @override
  final StringVO imageUrl;

  @override
  String toString() {
    return 'Landing(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Landing &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandingCopyWith<_$_Landing> get copyWith =>
      __$$_LandingCopyWithImpl<_$_Landing>(this, _$identity);
}

abstract class _Landing extends Landing {
  const factory _Landing(
      {required final StringVO title,
      required final StringVO imageUrl}) = _$_Landing;
  const _Landing._() : super._();

  @override
  StringVO get title;
  @override
  StringVO get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_LandingCopyWith<_$_Landing> get copyWith =>
      throw _privateConstructorUsedError;
}
