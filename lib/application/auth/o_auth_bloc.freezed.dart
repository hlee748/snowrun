// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'o_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAnonymousToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAnonymousToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAnonymousToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAnonymousToken value) getAnonymousToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAnonymousToken value)? getAnonymousToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAnonymousToken value)? getAnonymousToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthEventCopyWith<$Res> {
  factory $OAuthEventCopyWith(
          OAuthEvent value, $Res Function(OAuthEvent) then) =
      _$OAuthEventCopyWithImpl<$Res, OAuthEvent>;
}

/// @nodoc
class _$OAuthEventCopyWithImpl<$Res, $Val extends OAuthEvent>
    implements $OAuthEventCopyWith<$Res> {
  _$OAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAnonymousTokenCopyWith<$Res> {
  factory _$$_GetAnonymousTokenCopyWith(_$_GetAnonymousToken value,
          $Res Function(_$_GetAnonymousToken) then) =
      __$$_GetAnonymousTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAnonymousTokenCopyWithImpl<$Res>
    extends _$OAuthEventCopyWithImpl<$Res, _$_GetAnonymousToken>
    implements _$$_GetAnonymousTokenCopyWith<$Res> {
  __$$_GetAnonymousTokenCopyWithImpl(
      _$_GetAnonymousToken _value, $Res Function(_$_GetAnonymousToken) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAnonymousToken implements _GetAnonymousToken {
  const _$_GetAnonymousToken();

  @override
  String toString() {
    return 'OAuthEvent.getAnonymousToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAnonymousToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAnonymousToken,
  }) {
    return getAnonymousToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAnonymousToken,
  }) {
    return getAnonymousToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAnonymousToken,
    required TResult orElse(),
  }) {
    if (getAnonymousToken != null) {
      return getAnonymousToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAnonymousToken value) getAnonymousToken,
  }) {
    return getAnonymousToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAnonymousToken value)? getAnonymousToken,
  }) {
    return getAnonymousToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAnonymousToken value)? getAnonymousToken,
    required TResult orElse(),
  }) {
    if (getAnonymousToken != null) {
      return getAnonymousToken(this);
    }
    return orElse();
  }
}

abstract class _GetAnonymousToken implements OAuthEvent {
  const factory _GetAnonymousToken() = _$_GetAnonymousToken;
}

/// @nodoc
mixin _$OAuthState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  OAuthResponse get oAuthResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OAuthStateCopyWith<OAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthStateCopyWith<$Res> {
  factory $OAuthStateCopyWith(
          OAuthState value, $Res Function(OAuthState) then) =
      _$OAuthStateCopyWithImpl<$Res, OAuthState>;
  @useResult
  $Res call({DefaultStatus status, OAuthResponse oAuthResponse});

  $OAuthResponseCopyWith<$Res> get oAuthResponse;
}

/// @nodoc
class _$OAuthStateCopyWithImpl<$Res, $Val extends OAuthState>
    implements $OAuthStateCopyWith<$Res> {
  _$OAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? oAuthResponse = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      oAuthResponse: null == oAuthResponse
          ? _value.oAuthResponse
          : oAuthResponse // ignore: cast_nullable_to_non_nullable
              as OAuthResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OAuthResponseCopyWith<$Res> get oAuthResponse {
    return $OAuthResponseCopyWith<$Res>(_value.oAuthResponse, (value) {
      return _then(_value.copyWith(oAuthResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OAuthStateeCopyWith<$Res>
    implements $OAuthStateCopyWith<$Res> {
  factory _$$_OAuthStateeCopyWith(
          _$_OAuthStatee value, $Res Function(_$_OAuthStatee) then) =
      __$$_OAuthStateeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, OAuthResponse oAuthResponse});

  @override
  $OAuthResponseCopyWith<$Res> get oAuthResponse;
}

/// @nodoc
class __$$_OAuthStateeCopyWithImpl<$Res>
    extends _$OAuthStateCopyWithImpl<$Res, _$_OAuthStatee>
    implements _$$_OAuthStateeCopyWith<$Res> {
  __$$_OAuthStateeCopyWithImpl(
      _$_OAuthStatee _value, $Res Function(_$_OAuthStatee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? oAuthResponse = null,
  }) {
    return _then(_$_OAuthStatee(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      oAuthResponse: null == oAuthResponse
          ? _value.oAuthResponse
          : oAuthResponse // ignore: cast_nullable_to_non_nullable
              as OAuthResponse,
    ));
  }
}

/// @nodoc

class _$_OAuthStatee implements _OAuthStatee {
  const _$_OAuthStatee({required this.status, required this.oAuthResponse});

  @override
  final DefaultStatus status;
  @override
  final OAuthResponse oAuthResponse;

  @override
  String toString() {
    return 'OAuthState(status: $status, oAuthResponse: $oAuthResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuthStatee &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.oAuthResponse, oAuthResponse) ||
                other.oAuthResponse == oAuthResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, oAuthResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OAuthStateeCopyWith<_$_OAuthStatee> get copyWith =>
      __$$_OAuthStateeCopyWithImpl<_$_OAuthStatee>(this, _$identity);
}

abstract class _OAuthStatee implements OAuthState {
  const factory _OAuthStatee(
      {required final DefaultStatus status,
      required final OAuthResponse oAuthResponse}) = _$_OAuthStatee;

  @override
  DefaultStatus get status;
  @override
  OAuthResponse get oAuthResponse;
  @override
  @JsonKey(ignore: true)
  _$$_OAuthStateeCopyWith<_$_OAuthStatee> get copyWith =>
      throw _privateConstructorUsedError;
}
