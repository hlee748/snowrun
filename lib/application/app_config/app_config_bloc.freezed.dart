// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfigEvent {
  String get splashUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String splashUrl) splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String splashUrl)? splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String splashUrl)? splash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigEventCopyWith<AppConfigEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEventCopyWith<$Res> {
  factory $AppConfigEventCopyWith(
          AppConfigEvent value, $Res Function(AppConfigEvent) then) =
      _$AppConfigEventCopyWithImpl<$Res, AppConfigEvent>;
  @useResult
  $Res call({String splashUrl});
}

/// @nodoc
class _$AppConfigEventCopyWithImpl<$Res, $Val extends AppConfigEvent>
    implements $AppConfigEventCopyWith<$Res> {
  _$AppConfigEventCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashCopyWith<$Res>
    implements $AppConfigEventCopyWith<$Res> {
  factory _$$_SplashCopyWith(_$_Splash value, $Res Function(_$_Splash) then) =
      __$$_SplashCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String splashUrl});
}

/// @nodoc
class __$$_SplashCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$_Splash>
    implements _$$_SplashCopyWith<$Res> {
  __$$_SplashCopyWithImpl(_$_Splash _value, $Res Function(_$_Splash) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splashUrl = null,
  }) {
    return _then(_$_Splash(
      null == splashUrl
          ? _value.splashUrl
          : splashUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Splash implements _Splash {
  const _$_Splash(this.splashUrl);

  @override
  final String splashUrl;

  @override
  String toString() {
    return 'AppConfigEvent.splash(splashUrl: $splashUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Splash &&
            (identical(other.splashUrl, splashUrl) ||
                other.splashUrl == splashUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, splashUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashCopyWith<_$_Splash> get copyWith =>
      __$$_SplashCopyWithImpl<_$_Splash>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String splashUrl) splash,
  }) {
    return splash(splashUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String splashUrl)? splash,
  }) {
    return splash?.call(splashUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String splashUrl)? splash,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(splashUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splash value) splash,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Splash value)? splash,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splash value)? splash,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class _Splash implements AppConfigEvent {
  const factory _Splash(final String splashUrl) = _$_Splash;

  @override
  String get splashUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SplashCopyWith<_$_Splash> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppConfigState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  String get splashUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigStateCopyWith<AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res, AppConfigState>;
  @useResult
  $Res call({DefaultStatus status, String splashUrl});
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res, $Val extends AppConfigState>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? splashUrl = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      splashUrl: null == splashUrl
          ? _value.splashUrl
          : splashUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppConfigStateCopyWith<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  factory _$$_AppConfigStateCopyWith(
          _$_AppConfigState value, $Res Function(_$_AppConfigState) then) =
      __$$_AppConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, String splashUrl});
}

/// @nodoc
class __$$_AppConfigStateCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$_AppConfigState>
    implements _$$_AppConfigStateCopyWith<$Res> {
  __$$_AppConfigStateCopyWithImpl(
      _$_AppConfigState _value, $Res Function(_$_AppConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? splashUrl = null,
  }) {
    return _then(_$_AppConfigState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      splashUrl: null == splashUrl
          ? _value.splashUrl
          : splashUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppConfigState implements _AppConfigState {
  const _$_AppConfigState({required this.status, required this.splashUrl});

  @override
  final DefaultStatus status;
  @override
  final String splashUrl;

  @override
  String toString() {
    return 'AppConfigState(status: $status, splashUrl: $splashUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.splashUrl, splashUrl) ||
                other.splashUrl == splashUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, splashUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppConfigStateCopyWith<_$_AppConfigState> get copyWith =>
      __$$_AppConfigStateCopyWithImpl<_$_AppConfigState>(this, _$identity);
}

abstract class _AppConfigState implements AppConfigState {
  const factory _AppConfigState(
      {required final DefaultStatus status,
      required final String splashUrl}) = _$_AppConfigState;

  @override
  DefaultStatus get status;
  @override
  String get splashUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigStateCopyWith<_$_AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
