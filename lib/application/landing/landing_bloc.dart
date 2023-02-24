import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/application/default_status.dart';
import 'package:snowrun/domain/landing/i_landing_repository.dart';


part 'landing_event.dart';
part 'landing_state.dart';
part 'landing_bloc.freezed.dart';

@injectable
class LandingBloc extends Bloc<LandingEvent, LandingState> {
  final ILandingRepository _landingRepository;

  late AnimationController _controller;
  late Animation<double> _animation;

  LandingBloc(this._landingRepository) : super(LandingState.initial()) {
    print("HOHOHO ::: landing ::: 나와라");
    on<_GetLanding>((event, emit) async{
      emit(state.copyWith(status: DefaultStatus.progress));
      print("HOHOHO222 ::: landing ::: 나와라");
      final failureOrResponse = await _landingRepository.getLanding();
      emit(
        failureOrResponse.fold(
            (f) => state.copyWith(status: DefaultStatus.failure),
            (landing) {
              return state.copyWith(
                status: DefaultStatus.success,
                title: landing.title.getOrCrash(),
                imageUrl: landing.imageUrl.getOrCrash(),
              );
            }
        ),
      );
    });

  }

}
