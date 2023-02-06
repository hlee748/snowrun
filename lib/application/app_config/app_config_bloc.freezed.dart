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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSplash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSplash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSplash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSplash value) getSplash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSplash value)? getSplash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSplash value)? getSplash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEventCopyWith<$Res> {
  factory $AppConfigEventCopyWith(
          AppConfigEvent value, $Res Function(AppConfigEvent) then) =
      _$AppConfigEventCopyWithImpl<$Res, AppConfigEvent>;
}

/// @nodoc
class _$AppConfigEventCopyWithImpl<$Res, $Val extends AppConfigEvent>
    implements $AppConfigEventCopyWith<$Res> {
  _$AppConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSplashCopyWith<$Res> {
  factory _$$_GetSplashCopyWith(
          _$_GetSplash value, $Res Function(_$_GetSplash) then) =
      __$$_GetSplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSplashCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$_GetSplash>
    implements _$$_GetSplashCopyWith<$Res> {
  __$$_GetSplashCopyWithImpl(
      _$_GetSplash _value, $Res Function(_$_GetSplash) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSplash implements _GetSplash {
  const _$_GetSplash();

  @override
  String toString() {
    return 'AppConfigEvent.getSplash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSplash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSplash,
  }) {
    return getSplash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSplash,
  }) {
    return getSplash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSplash,
    required TResult orElse(),
  }) {
    if (getSplash != null) {
      return getSplash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSplash value) getSplash,
  }) {
    return getSplash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSplash value)? getSplash,
  }) {
    return getSplash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSplash value)? getSplash,
    required TResult orElse(),
  }) {
    if (getSplash != null) {
      return getSplash(this);
    }
    return orElse();
  }
}

abstract class _GetSplash implements AppConfigEvent {
  const factory _GetSplash() = _$_GetSplash;
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
