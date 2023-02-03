import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/application/default_status.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

@injectable
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {

  BottomNavigationBloc() : super(BottomNavigationState.initial()) {
    on<_ChangePosition>((event, emit) async {
      emit(
        state.copyWith(
            status: DefaultStatus.success,
            currentPosition: event.position
        ),
      );
    });
  }
}
