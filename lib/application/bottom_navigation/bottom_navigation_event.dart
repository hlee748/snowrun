part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.changePosition(int position) = _ChangePosition;
  const factory BottomNavigationEvent.initBottomSheet(bool isInit) = _InitBottomSheet;
}
