part of 'app_config_bloc.dart';

@freezed
class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    required DefaultStatus status,
    required String splashUrl,
  }) = _AppConfigState;

  factory AppConfigState.initial() => const AppConfigState(
    status: DefaultStatus.initial,
    splashUrl: "",
  );
}