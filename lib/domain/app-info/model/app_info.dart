import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/app-info/model/app_notice.dart';
import 'package:snowrun/domain/app-info/model/app_version.dart';
import 'package:snowrun/domain/core/failures.dart';

part 'app_info.freezed.dart';

@freezed
class AppInfo with _$AppInfo {
  const AppInfo._();

  const factory AppInfo({
    required AppVersion appVersion,
    required AppNotice appNotice,
  }) = _AppInfo;

  factory AppInfo.empty() => AppInfo(
    appVersion: AppVersion.empty(),
    appNotice: AppNotice.empty(),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return appVersion.failureOption
        .fold(() => right(unit), (f) => left(f))
        .andThen(
        appNotice.failureOption.fold(() => right(unit), (a) => left(a)))
        .fold((f) => some(f), (_) => none());
  }
}
