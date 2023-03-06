part of 'landing_bloc.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState({
    required DefaultStatus status,
    required String title,
    required String imageUrl,
  }) = _LandingState;

  factory LandingState.initial() => const LandingState(
    status: DefaultStatus.initial,
    title: "SNOW\nRUN",
    imageUrl: "assets/pngs/snowrun_new_ic.png",
  );
}