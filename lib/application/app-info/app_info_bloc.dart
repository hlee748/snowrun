import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/domain/app-info/i_app_info_repository.dart';
import 'package:snowrun/domain/app-info/model/app_notice.dart';
import 'package:snowrun/domain/app-info/model/app_operation_url.dart';
import 'package:snowrun/domain/app-info/model/app_version.dart';
import 'package:snowrun/application/default_status.dart';

part 'app_info_event.dart';

part 'app_info_state.dart';

part 'app_info_bloc.freezed.dart';

@singleton
class AppInfoBloc extends Bloc<AppInfoEvent, AppInfoState> {
  final IAppInfoRepository _appInfoRepository;

  late Function(AppNotice)? onShowAppNoticePage;
  late Function(AppVersion)? onShowRecommendUpdateVersionPage;

  AppInfoBloc(this._appInfoRepository) : super(AppInfoState.initial()) {
    on<_GetAppInfo>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _appInfoRepository.getAppInfo();
      emit(
        failureOrResponse.fold(
            (f) => state.copyWith(
                  status: DefaultStatus.success,
                  appVersion: AppVersion.empty(),
                  appNotice: AppNotice.empty(),
                ), (appInfo) {
          debugPrint("FULTTER_CORE :: app_info_bloc :: onSuccess");
          if (isShowAppNotice(appInfo.appNotice)) {
            debugPrint("FULTTER_CORE :: app_info_bloc :: onShowAppNoticePage");
            onShowAppNoticePage?.call(appInfo.appNotice);
          } else if (!isAvailableVersion(appInfo.appVersion)) {
            debugPrint(
                "FULTTER_CORE :: app_info_bloc :: onShowRecommendUpdateVersionPage");
            onShowRecommendUpdateVersionPage?.call(appInfo.appVersion);
          }

          return state.copyWith(
            status: DefaultStatus.success,
            appVersion: appInfo.appVersion,
            isLatestVersion: isLatestVersion(appInfo.appVersion),
            isAvailableVersion: isAvailableVersion(appInfo.appVersion),
            canUpdateVersion: !isLatestVersion(appInfo.appVersion),
            appNotice: appInfo.appNotice,
            isShowAppNotice: isShowAppNotice(appInfo.appNotice),
          );
        }),
      );
    });

    on<_GetOperationUrl>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _appInfoRepository.getOperationUrl();
      emit(
        failureOrResponse.fold(
            (f) => state.copyWith(
                  status: DefaultStatus.success,
                  appOperationUrl: AppOperationUrl.empty(),
                  appVersion: AppVersion.empty(),
                ), (appInfo) {
          debugPrint("FULTTER_CORE :: app_info_bloc :: onSuccess");
          return state.copyWith(
            status: DefaultStatus.success,
            appVersion: appInfo.appVersion,
          );
        }),
      );
    });
  }

  isShowAppNotice(AppNotice appNotice) =>
      appNotice.imageUrl.getOrCrash().isNotEmpty ||
      appNotice.title.getOrCrash().isNotEmpty ||
      appNotice.description.getOrCrash().isNotEmpty;

  isAvailableVersion(AppVersion appVersion) {
    final min = appVersion.min.getOrCrash();
    final current = appVersion.current?.getOrCrash();
    if (current != null) {
      if (current < min) {
        return false;
      }
    }
    return true;
  }

  isLatestVersion(AppVersion appVersion) {
    final current = appVersion.current?.getOrCrash();
    final latest = appVersion.latest.getOrCrash();
    if (current != null) {
      if (current >= latest) {
        return true;
      }
    }
    return false;
  }
}
