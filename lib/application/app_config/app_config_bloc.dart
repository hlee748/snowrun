import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/application/default_status.dart';
import 'package:snowrun/domain/app_config/i_app_config_repository.dart';

part 'app_config_event.dart';
part 'app_config_state.dart';
part 'app_config_bloc.freezed.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  final IAppConfigRepository _appConfigRepository;

  AppConfigBloc(this._appConfigRepository) : super(AppConfigState.initial()) {
    on<_Splash>((event, emit) async{
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _appConfigRepository.get(
        event.splashUrl);
      emit(
        failureOrResponse.fold(
            (f) => state.copyWith(status: DefaultStatus.failure),
            (splashImage) {
              return state.copyWith(
                status: DefaultStatus.success,
                splashUrl: ""
              );
            }
        )
      );
    });
  }
}
