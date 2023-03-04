import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/auth/firebase_auth_failure.dart';
import 'package:snowrun/domain/auth/model/o_auth_response.dart';


abstract class IFirebaseAuthRepository {
  Future<Either<FirebaseAuthFailure, OAuthResponse>> getAnonymous();
}