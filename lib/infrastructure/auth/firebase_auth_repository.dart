import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:snowrun/domain/auth/firebase_auth_failure.dart';
import 'package:snowrun/domain/auth/i_firebase_auth_repository.dart';
import 'package:snowrun/domain/auth/model/o_auth_response.dart';
import 'package:snowrun/domain/core/value_objects.dart';

@LazySingleton(as: IFirebaseAuthRepository)
class FirebaseAuthRepository implements IFirebaseAuthRepository {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthRepository(this.firebaseAuth);

  @override
  Future<Either<FirebaseAuthFailure, OAuthResponse>> getAnonymous() async {
    final userCredential = await firebaseAuth.signInAnonymously();
    final idToken = await userCredential.user?.getIdToken();

    debugPrint("FD_CORE_getAnonymous_token_repository = $idToken");
    if (idToken != null) {
      return right(OAuthResponse(authToken: StringVO(idToken)));
    } else {
      return left(const FirebaseAuthFailure.failureSignin());
    }
  }

}
