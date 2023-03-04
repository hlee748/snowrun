part of 'o_auth_bloc.dart';

@freezed
class OAuthState with _$OAuthState {
  const factory OAuthState({
    required DefaultStatus status,
    required OAuthResponse oAuthResponse,
  }) = _OAuthStatee;

  factory OAuthState.initial() => OAuthState(
    status: DefaultStatus.initial,
    oAuthResponse: OAuthResponse.empty(),
  );
}
