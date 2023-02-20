// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInfo {
  AppVersion get appVersion => throw _privateConstructorUsedError;
  AppNotice get appNotice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call({AppVersion appVersion, AppNotice appNotice});

  $AppVersionCopyWith<$Res> get appVersion;
  $AppNoticeCopyWith<$Res> get appNotice;
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? appNotice = null,
  }) {
    return _then(_value.copyWith(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      appNotice: null == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNotice,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get appVersion {
    return $AppVersionCopyWith<$Res>(_value.appVersion, (value) {
      return _then(_value.copyWith(appVersion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeCopyWith<$Res> get appNotice {
    return $AppNoticeCopyWith<$Res>(_value.appNotice, (value) {
      return _then(_value.copyWith(appNotice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$_AppInfoCopyWith(
          _$_AppInfo value, $Res Function(_$_AppInfo) then) =
      __$$_AppInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppVersion appVersion, AppNotice appNotice});

  @override
  $AppVersionCopyWith<$Res> get appVersion;
  @override
  $AppNoticeCopyWith<$Res> get appNotice;
}

/// @nodoc
class __$$_AppInfoCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$_AppInfo>
    implements _$$_AppInfoCopyWith<$Res> {
  __$$_AppInfoCopyWithImpl(_$_AppInfo _value, $Res Function(_$_AppInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? appNotice = null,
  }) {
    return _then(_$_AppInfo(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      appNotice: null == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNotice,
    ));
  }
}

/// @nodoc

class _$_AppInfo extends _AppInfo {
  const _$_AppInfo({required this.appVersion, required this.appNotice})
      : super._();

  @override
  final AppVersion appVersion;
  @override
  final AppNotice appNotice;

  @override
  String toString() {
    return 'AppInfo(appVersion: $appVersion, appNotice: $appNotice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppInfo &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.appNotice, appNotice) ||
                other.appNotice == appNotice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersion, appNotice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppInfoCopyWith<_$_AppInfo> get copyWith =>
      __$$_AppInfoCopyWithImpl<_$_AppInfo>(this, _$identity);
}

abstract class _AppInfo extends AppInfo {
  const factory _AppInfo(
      {required final AppVersion appVersion,
      required final AppNotice appNotice}) = _$_AppInfo;
  const _AppInfo._() : super._();

  @override
  AppVersion get appVersion;
  @override
  AppNotice get appNotice;
  @override
  @JsonKey(ignore: true)
  _$$_AppInfoCopyWith<_$_AppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
