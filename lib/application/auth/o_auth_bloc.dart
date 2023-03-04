import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/application/default_status.dart';
import 'package:snowrun/domain/auth/i_firebase_auth_repository.dart';
import 'package:snowrun/domain/auth/model/o_auth_response.dart';
import 'package:snowrun/infrastructure/hive/hive_provider.dart';

part 'o_auth_event.dart';

part 'o_auth_state.dart';

part 'o_auth_bloc.freezed.dart';

@injectable
class OAuthBloc extends Bloc<OAuthEvent, OAuthState> {
  final IFirebaseAuthRepository _firebaseRepository;
  // final HiveProvider _hiveProvider;

  OAuthBloc(this._firebaseRepository, )
      : super(OAuthState.initial()) {
    on<_GetAnonymousToken>((event, emit) async {
      print("FD_AUTH_getAnonymous_token_bloc");
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _firebaseRepository.getAnonymous();
      emit(
        failureOrResponse
            .fold((f) => state.copyWith(status: DefaultStatus.failure),
                (oAuthResponse) {
              print("FD_AUTH_getAnonymous_token_bloc token = $oAuthResponse");
              // _hiveProvider.setAuthToken(oAuthResponse.authToken.getOrCrash());
              return state.copyWith(
                status: DefaultStatus.success,
                oAuthResponse: oAuthResponse,
              );
            }),
      );
    });
  }

}
