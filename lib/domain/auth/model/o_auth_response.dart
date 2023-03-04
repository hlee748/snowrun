import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'o_auth_response.freezed.dart';

@freezed
class OAuthResponse with _$OAuthResponse {
  const OAuthResponse._();

  const factory OAuthResponse({
    required StringVO authToken,
  }) = _OAuthResponse;

  factory OAuthResponse.empty() => OAuthResponse(
    authToken: StringVO(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return authToken.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
