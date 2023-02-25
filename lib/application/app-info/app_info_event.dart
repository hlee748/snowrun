part of 'app_info_bloc.dart';

@freezed
class AppInfoEvent with _$AppInfoEvent {
  const factory AppInfoEvent.getAppInfo() = _GetAppInfo;
  const factory AppInfoEvent.getOperationUrl() = _GetOperationUrl;
}
