part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({
    required DefaultStatus status,
    required int currentPosition,
  }) = _BottomNavigationState;

  factory BottomNavigationState.initial() => const BottomNavigationState(
    status: DefaultStatus.initial,
    currentPosition: 0,
  );
}