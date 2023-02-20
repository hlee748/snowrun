import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'app_notice_button_info.freezed.dart';
@freezed
class AppNoticeButtonInfo with _$AppNoticeButtonInfo {
  const AppNoticeButtonInfo._();
  const factory AppNoticeButtonInfo({
    required StringVO title,
    required StringVO deeplink,
  }) = _AppNoticeButtonInfo;
  factory AppNoticeButtonInfo.empty() => AppNoticeButtonInfo(
    title: StringVO(null),
    deeplink: StringVO(null),
  );
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(deeplink.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}