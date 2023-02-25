import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/app-info/model/app_info.dart';
import 'package:snowrun/domain/app-info/model/app_notice.dart';
import 'package:snowrun/domain/app-info/model/app_notice_button_info.dart';
import 'package:snowrun/domain/app-info/model/app_operation_url.dart';
import 'package:snowrun/domain/app-info/model/app_version.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'app_info_dtos.freezed.dart';

part 'app_info_dtos.g.dart';

@freezed
class AppInfoDto with _$AppInfoDto {
  const AppInfoDto._();

  const factory AppInfoDto({
    @JsonKey(name: 'appVersion') AppVersionDto? appVersion,
    @JsonKey(name: 'appNotice') AppNoticeDto? appNotice,
  }) = _AppInfoDto;

  AppInfo toDomain() {
    return AppInfo(
        appVersion: appVersion?.toDomain() ?? AppVersion.empty(),
        appNotice: appNotice?.toDomain() ?? AppNotice.empty());
  }

  factory AppInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AppInfoDtoFromJson(json);
}

@freezed
class AppVersionDto with _$AppVersionDto {
  const AppVersionDto._();

  const factory AppVersionDto({
    @JsonKey(name: 'min') required String min,
    @JsonKey(name: 'latest') required String latest,
  }) = _AppVersionDto;

  AppVersion toDomain() {
    return AppVersion(min: VersionVO(min), latest: VersionVO(latest));
  }

  factory AppVersionDto.fromJson(Map<String, dynamic> json) =>
      _$AppVersionDtoFromJson(json);
}

@freezed
class AppNoticeDto with _$AppNoticeDto {
  const AppNoticeDto._();

  const factory AppNoticeDto({
    @JsonKey(name: 'imageUrl') required String? imageUrl,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'negativeButton')
        required AppNoticeButtonInfoDto? negativeButton,
    @JsonKey(name: 'positiveButton')
        required AppNoticeButtonInfoDto? positiveButton,
    @JsonKey(name: 'isForcedFinish') required bool? isForcedFinish,
  }) = _AppNoticeDto;

  AppNotice toDomain() {
    return AppNotice(
        imageUrl: StringVO(imageUrl),
        title: StringVO(title),
        description: StringVO(description),
        negativeButton: AppNoticeButtonInfoVO(negativeButton?.toDomain()),
        positiveButton: AppNoticeButtonInfoVO(positiveButton?.toDomain()),
        isForcedFinish: BooleanVO(isForcedFinish ?? false));
  }

  factory AppNoticeDto.fromJson(Map<String, dynamic> json) =>
      _$AppNoticeDtoFromJson(json);
}

@freezed
class AppNoticeButtonInfoDto with _$AppNoticeButtonInfoDto {
  const AppNoticeButtonInfoDto._();

  const factory AppNoticeButtonInfoDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'deeplink') required String deeplink,
  }) = _AppNoticeButtonInfoDto;

  AppNoticeButtonInfo toDomain() {
    return AppNoticeButtonInfo(
      title: StringVO(title),
      deeplink: StringVO(deeplink),
    );
  }

  factory AppNoticeButtonInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AppNoticeButtonInfoDtoFromJson(json);
}

@freezed
class AppOperationUrlDto with _$AppOperationUrlDto {
  const AppOperationUrlDto._();

  const factory AppOperationUrlDto({
    @JsonKey(name: 'terms') required String terms,
    @JsonKey(name: 'privacyPolicy') required String privacyPolicy,
    @JsonKey(name: 'userLocationPolicy') required String userLocationPolicy,
    @JsonKey(name: 'appVersion') AppVersionDto? appVersion,
  }) = _AppOperationUrlDto;

  AppOperationUrl toDomain() {
    return AppOperationUrl(
        terms: StringVO(terms),
        privacyPolicy: StringVO(privacyPolicy),
        userLocationPolicy: StringVO(userLocationPolicy),
        appVersion: appVersion?.toDomain() ?? AppVersion.empty());
  }

  factory AppOperationUrlDto.fromJson(Map<String, dynamic> json) =>
      _$AppOperationUrlDtoFromJson(json);
}
