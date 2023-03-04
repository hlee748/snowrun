// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'o_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OAuthResponse {
  StringVO get authToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OAuthResponseCopyWith<OAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthResponseCopyWith<$Res> {
  factory $OAuthResponseCopyWith(
          OAuthResponse value, $Res Function(OAuthResponse) then) =
      _$OAuthResponseCopyWithImpl<$Res, OAuthResponse>;
  @useResult
  $Res call({StringVO authToken});
}

/// @nodoc
class _$OAuthResponseCopyWithImpl<$Res, $Val extends OAuthResponse>
    implements $OAuthResponseCopyWith<$Res> {
  _$OAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OAuthResponseCopyWith<$Res>
    implements $OAuthResponseCopyWith<$Res> {
  factory _$$_OAuthResponseCopyWith(
          _$_OAuthResponse value, $Res Function(_$_OAuthResponse) then) =
      __$$_OAuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO authToken});
}

/// @nodoc
class __$$_OAuthResponseCopyWithImpl<$Res>
    extends _$OAuthResponseCopyWithImpl<$Res, _$_OAuthResponse>
    implements _$$_OAuthResponseCopyWith<$Res> {
  __$$_OAuthResponseCopyWithImpl(
      _$_OAuthResponse _value, $Res Function(_$_OAuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_$_OAuthResponse(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_OAuthResponse extends _OAuthResponse {
  const _$_OAuthResponse({required this.authToken}) : super._();

  @override
  final StringVO authToken;

  @override
  String toString() {
    return 'OAuthResponse(authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuthResponse &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OAuthResponseCopyWith<_$_OAuthResponse> get copyWith =>
      __$$_OAuthResponseCopyWithImpl<_$_OAuthResponse>(this, _$identity);
}

abstract class _OAuthResponse extends OAuthResponse {
  const factory _OAuthResponse({required final StringVO authToken}) =
      _$_OAuthResponse;
  const _OAuthResponse._() : super._();

  @override
  StringVO get authToken;
  @override
  @JsonKey(ignore: true)
  _$$_OAuthResponseCopyWith<_$_OAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
