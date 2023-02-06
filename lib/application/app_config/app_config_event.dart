part of 'app_config_bloc.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.splash(String splashUrl) = _Splash;
}
