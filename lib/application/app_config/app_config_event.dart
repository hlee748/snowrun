part of 'app_config_bloc.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.getSplash() = _GetSplash;
}
