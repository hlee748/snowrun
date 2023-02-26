// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppInfo value) getAppInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppInfo value)? getAppInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppInfo value)? getAppInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoEventCopyWith<$Res> {
  factory $AppInfoEventCopyWith(
          AppInfoEvent value, $Res Function(AppInfoEvent) then) =
      _$AppInfoEventCopyWithImpl<$Res, AppInfoEvent>;
}

/// @nodoc
class _$AppInfoEventCopyWithImpl<$Res, $Val extends AppInfoEvent>
    implements $AppInfoEventCopyWith<$Res> {
  _$AppInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAppInfoCopyWith<$Res> {
  factory _$$_GetAppInfoCopyWith(
          _$_GetAppInfo value, $Res Function(_$_GetAppInfo) then) =
      __$$_GetAppInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAppInfoCopyWithImpl<$Res>
    extends _$AppInfoEventCopyWithImpl<$Res, _$_GetAppInfo>
    implements _$$_GetAppInfoCopyWith<$Res> {
  __$$_GetAppInfoCopyWithImpl(
      _$_GetAppInfo _value, $Res Function(_$_GetAppInfo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAppInfo implements _GetAppInfo {
  const _$_GetAppInfo();

  @override
  String toString() {
    return 'AppInfoEvent.getAppInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAppInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAppInfo,
  }) {
    return getAppInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAppInfo,
  }) {
    return getAppInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAppInfo,
    required TResult orElse(),
  }) {
    if (getAppInfo != null) {
      return getAppInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAppInfo value) getAppInfo,
  }) {
    return getAppInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAppInfo value)? getAppInfo,
  }) {
    return getAppInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAppInfo value)? getAppInfo,
    required TResult orElse(),
  }) {
    if (getAppInfo != null) {
      return getAppInfo(this);
    }
    return orElse();
  }
}

abstract class _GetAppInfo implements AppInfoEvent {
  const factory _GetAppInfo() = _$_GetAppInfo;
}

/// @nodoc
mixin _$AppInfoState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  AppVersion get appVersion => throw _privateConstructorUsedError;
  bool? get isLatestVersion => throw _privateConstructorUsedError;
  bool? get isAvailableVersion => throw _privateConstructorUsedError;
  bool? get canUpdateVersion => throw _privateConstructorUsedError;
  AppNotice get appNotice => throw _privateConstructorUsedError;
  bool? get isShowAppNotice => throw _privateConstructorUsedError;
  List<AppOperationInfo> get appOperationInfos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInfoStateCopyWith<AppInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoStateCopyWith<$Res> {
  factory $AppInfoStateCopyWith(
          AppInfoState value, $Res Function(AppInfoState) then) =
      _$AppInfoStateCopyWithImpl<$Res, AppInfoState>;
  @useResult
  $Res call(
      {DefaultStatus status,
      AppVersion appVersion,
      bool? isLatestVersion,
      bool? isAvailableVersion,
      bool? canUpdateVersion,
      AppNotice appNotice,
      bool? isShowAppNotice,
      List<AppOperationInfo> appOperationInfos});

  $AppVersionCopyWith<$Res> get appVersion;
  $AppNoticeCopyWith<$Res> get appNotice;
}

/// @nodoc
class _$AppInfoStateCopyWithImpl<$Res, $Val extends AppInfoState>
    implements $AppInfoStateCopyWith<$Res> {
  _$AppInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? appVersion = null,
    Object? isLatestVersion = freezed,
    Object? isAvailableVersion = freezed,
    Object? canUpdateVersion = freezed,
    Object? appNotice = null,
    Object? isShowAppNotice = freezed,
    Object? appOperationInfos = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      isLatestVersion: freezed == isLatestVersion
          ? _value.isLatestVersion
          : isLatestVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableVersion: freezed == isAvailableVersion
          ? _value.isAvailableVersion
          : isAvailableVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      canUpdateVersion: freezed == canUpdateVersion
          ? _value.canUpdateVersion
          : canUpdateVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      appNotice: null == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNotice,
      isShowAppNotice: freezed == isShowAppNotice
          ? _value.isShowAppNotice
          : isShowAppNotice // ignore: cast_nullable_to_non_nullable
              as bool?,
      appOperationInfos: null == appOperationInfos
          ? _value.appOperationInfos
          : appOperationInfos // ignore: cast_nullable_to_non_nullable
              as List<AppOperationInfo>,
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
abstract class _$$_AppInfoStateCopyWith<$Res>
    implements $AppInfoStateCopyWith<$Res> {
  factory _$$_AppInfoStateCopyWith(
          _$_AppInfoState value, $Res Function(_$_AppInfoState) then) =
      __$$_AppInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DefaultStatus status,
      AppVersion appVersion,
      bool? isLatestVersion,
      bool? isAvailableVersion,
      bool? canUpdateVersion,
      AppNotice appNotice,
      bool? isShowAppNotice,
      List<AppOperationInfo> appOperationInfos});

  @override
  $AppVersionCopyWith<$Res> get appVersion;
  @override
  $AppNoticeCopyWith<$Res> get appNotice;
}

/// @nodoc
class __$$_AppInfoStateCopyWithImpl<$Res>
    extends _$AppInfoStateCopyWithImpl<$Res, _$_AppInfoState>
    implements _$$_AppInfoStateCopyWith<$Res> {
  __$$_AppInfoStateCopyWithImpl(
      _$_AppInfoState _value, $Res Function(_$_AppInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? appVersion = null,
    Object? isLatestVersion = freezed,
    Object? isAvailableVersion = freezed,
    Object? canUpdateVersion = freezed,
    Object? appNotice = null,
    Object? isShowAppNotice = freezed,
    Object? appOperationInfos = null,
  }) {
    return _then(_$_AppInfoState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      isLatestVersion: freezed == isLatestVersion
          ? _value.isLatestVersion
          : isLatestVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableVersion: freezed == isAvailableVersion
          ? _value.isAvailableVersion
          : isAvailableVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      canUpdateVersion: freezed == canUpdateVersion
          ? _value.canUpdateVersion
          : canUpdateVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      appNotice: null == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNotice,
      isShowAppNotice: freezed == isShowAppNotice
          ? _value.isShowAppNotice
          : isShowAppNotice // ignore: cast_nullable_to_non_nullable
              as bool?,
      appOperationInfos: null == appOperationInfos
          ? _value._appOperationInfos
          : appOperationInfos // ignore: cast_nullable_to_non_nullable
              as List<AppOperationInfo>,
    ));
  }
}

/// @nodoc

class _$_AppInfoState implements _AppInfoState {
  const _$_AppInfoState(
      {required this.status,
      required this.appVersion,
      required this.isLatestVersion,
      required this.isAvailableVersion,
      required this.canUpdateVersion,
      required this.appNotice,
      required this.isShowAppNotice,
      required final List<AppOperationInfo> appOperationInfos})
      : _appOperationInfos = appOperationInfos;

  @override
  final DefaultStatus status;
  @override
  final AppVersion appVersion;
  @override
  final bool? isLatestVersion;
  @override
  final bool? isAvailableVersion;
  @override
  final bool? canUpdateVersion;
  @override
  final AppNotice appNotice;
  @override
  final bool? isShowAppNotice;
  final List<AppOperationInfo> _appOperationInfos;
  @override
  List<AppOperationInfo> get appOperationInfos {
    if (_appOperationInfos is EqualUnmodifiableListView)
      return _appOperationInfos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appOperationInfos);
  }

  @override
  String toString() {
    return 'AppInfoState(status: $status, appVersion: $appVersion, isLatestVersion: $isLatestVersion, isAvailableVersion: $isAvailableVersion, canUpdateVersion: $canUpdateVersion, appNotice: $appNotice, isShowAppNotice: $isShowAppNotice, appOperationInfos: $appOperationInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppInfoState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.isLatestVersion, isLatestVersion) ||
                other.isLatestVersion == isLatestVersion) &&
            (identical(other.isAvailableVersion, isAvailableVersion) ||
                other.isAvailableVersion == isAvailableVersion) &&
            (identical(other.canUpdateVersion, canUpdateVersion) ||
                other.canUpdateVersion == canUpdateVersion) &&
            (identical(other.appNotice, appNotice) ||
                other.appNotice == appNotice) &&
            (identical(other.isShowAppNotice, isShowAppNotice) ||
                other.isShowAppNotice == isShowAppNotice) &&
            const DeepCollectionEquality()
                .equals(other._appOperationInfos, _appOperationInfos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      appVersion,
      isLatestVersion,
      isAvailableVersion,
      canUpdateVersion,
      appNotice,
      isShowAppNotice,
      const DeepCollectionEquality().hash(_appOperationInfos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppInfoStateCopyWith<_$_AppInfoState> get copyWith =>
      __$$_AppInfoStateCopyWithImpl<_$_AppInfoState>(this, _$identity);
}

abstract class _AppInfoState implements AppInfoState {
  const factory _AppInfoState(
          {required final DefaultStatus status,
          required final AppVersion appVersion,
          required final bool? isLatestVersion,
          required final bool? isAvailableVersion,
          required final bool? canUpdateVersion,
          required final AppNotice appNotice,
          required final bool? isShowAppNotice,
          required final List<AppOperationInfo> appOperationInfos}) =
      _$_AppInfoState;

  @override
  DefaultStatus get status;
  @override
  AppVersion get appVersion;
  @override
  bool? get isLatestVersion;
  @override
  bool? get isAvailableVersion;
  @override
  bool? get canUpdateVersion;
  @override
  AppNotice get appNotice;
  @override
  bool? get isShowAppNotice;
  @override
  List<AppOperationInfo> get appOperationInfos;
  @override
  @JsonKey(ignore: true)
  _$$_AppInfoStateCopyWith<_$_AppInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
