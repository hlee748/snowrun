// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_auth_failure.freezed.dart';

@freezed
class FirebaseAuthFailure with _$FirebaseAuthFailure {
  const factory FirebaseAuthFailure.unexpected() = _Unexpected;
  const factory FirebaseAuthFailure.failureSignin() = _EmptyToken;
}
