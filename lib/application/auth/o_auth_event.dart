part of 'o_auth_bloc.dart';

@freezed
class OAuthEvent with _$OAuthEvent {
  const factory OAuthEvent.getAnonymousToken() = _GetAnonymousToken;
}
