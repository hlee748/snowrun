// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_operation_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppOperationUrl {
  StringVO get terms => throw _privateConstructorUsedError;
  StringVO get privacyPolicy => throw _privateConstructorUsedError;
  StringVO get userLocationPolicy => throw _privateConstructorUsedError;
  AppVersion get appVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppOperationUrlCopyWith<AppOperationUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOperationUrlCopyWith<$Res> {
  factory $AppOperationUrlCopyWith(
          AppOperationUrl value, $Res Function(AppOperationUrl) then) =
      _$AppOperationUrlCopyWithImpl<$Res, AppOperationUrl>;
  @useResult
  $Res call(
      {StringVO terms,
      StringVO privacyPolicy,
      StringVO userLocationPolicy,
      AppVersion appVersion});

  $AppVersionCopyWith<$Res> get appVersion;
}

/// @nodoc
class _$AppOperationUrlCopyWithImpl<$Res, $Val extends AppOperationUrl>
    implements $AppOperationUrlCopyWith<$Res> {
  _$AppOperationUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
    Object? privacyPolicy = null,
    Object? userLocationPolicy = null,
    Object? appVersion = null,
  }) {
    return _then(_value.copyWith(
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as StringVO,
      privacyPolicy: null == privacyPolicy
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as StringVO,
      userLocationPolicy: null == userLocationPolicy
          ? _value.userLocationPolicy
          : userLocationPolicy // ignore: cast_nullable_to_non_nullable
              as StringVO,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get appVersion {
    return $AppVersionCopyWith<$Res>(_value.appVersion, (value) {
      return _then(_value.copyWith(appVersion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppOperationUrlCopyWith<$Res>
    implements $AppOperationUrlCopyWith<$Res> {
  factory _$$_AppOperationUrlCopyWith(
          _$_AppOperationUrl value, $Res Function(_$_AppOperationUrl) then) =
      __$$_AppOperationUrlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringVO terms,
      StringVO privacyPolicy,
      StringVO userLocationPolicy,
      AppVersion appVersion});

  @override
  $AppVersionCopyWith<$Res> get appVersion;
}

/// @nodoc
class __$$_AppOperationUrlCopyWithImpl<$Res>
    extends _$AppOperationUrlCopyWithImpl<$Res, _$_AppOperationUrl>
    implements _$$_AppOperationUrlCopyWith<$Res> {
  __$$_AppOperationUrlCopyWithImpl(
      _$_AppOperationUrl _value, $Res Function(_$_AppOperationUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
    Object? privacyPolicy = null,
    Object? userLocationPolicy = null,
    Object? appVersion = null,
  }) {
    return _then(_$_AppOperationUrl(
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as StringVO,
      privacyPolicy: null == privacyPolicy
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as StringVO,
      userLocationPolicy: null == userLocationPolicy
          ? _value.userLocationPolicy
          : userLocationPolicy // ignore: cast_nullable_to_non_nullable
              as StringVO,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
    ));
  }
}

/// @nodoc

class _$_AppOperationUrl extends _AppOperationUrl {
  const _$_AppOperationUrl(
      {required this.terms,
      required this.privacyPolicy,
      required this.userLocationPolicy,
      required this.appVersion})
      : super._();

  @override
  final StringVO terms;
  @override
  final StringVO privacyPolicy;
  @override
  final StringVO userLocationPolicy;
  @override
  final AppVersion appVersion;

  @override
  String toString() {
    return 'AppOperationUrl(terms: $terms, privacyPolicy: $privacyPolicy, userLocationPolicy: $userLocationPolicy, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppOperationUrl &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                other.privacyPolicy == privacyPolicy) &&
            (identical(other.userLocationPolicy, userLocationPolicy) ||
                other.userLocationPolicy == userLocationPolicy) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, terms, privacyPolicy, userLocationPolicy, appVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppOperationUrlCopyWith<_$_AppOperationUrl> get copyWith =>
      __$$_AppOperationUrlCopyWithImpl<_$_AppOperationUrl>(this, _$identity);
}

abstract class _AppOperationUrl extends AppOperationUrl {
  const factory _AppOperationUrl(
      {required final StringVO terms,
      required final StringVO privacyPolicy,
      required final StringVO userLocationPolicy,
      required final AppVersion appVersion}) = _$_AppOperationUrl;
  const _AppOperationUrl._() : super._();

  @override
  StringVO get terms;
  @override
  StringVO get privacyPolicy;
  @override
  StringVO get userLocationPolicy;
  @override
  AppVersion get appVersion;
  @override
  @JsonKey(ignore: true)
  _$$_AppOperationUrlCopyWith<_$_AppOperationUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
