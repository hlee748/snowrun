// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppInfoDto _$$_AppInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_AppInfoDto(
      appVersion: json['appVersion'] == null
          ? null
          : AppVersionDto.fromJson(json['appVersion'] as Map<String, dynamic>),
      appNotice: json['appNotice'] == null
          ? null
          : AppNoticeDto.fromJson(json['appNotice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppInfoDtoToJson(_$_AppInfoDto instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'appNotice': instance.appNotice,
    };

_$_AppVersionDto _$$_AppVersionDtoFromJson(Map<String, dynamic> json) =>
    _$_AppVersionDto(
      min: json['min'] as String,
      latest: json['latest'] as String,
    );

Map<String, dynamic> _$$_AppVersionDtoToJson(_$_AppVersionDto instance) =>
    <String, dynamic>{
      'min': instance.min,
      'latest': instance.latest,
    };

_$_AppNoticeDto _$$_AppNoticeDtoFromJson(Map<String, dynamic> json) =>
    _$_AppNoticeDto(
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      negativeButton: json['negativeButton'] == null
          ? null
          : AppNoticeButtonInfoDto.fromJson(
              json['negativeButton'] as Map<String, dynamic>),
      positiveButton: json['positiveButton'] == null
          ? null
          : AppNoticeButtonInfoDto.fromJson(
              json['positiveButton'] as Map<String, dynamic>),
      isForcedFinish: json['isForcedFinish'] as bool?,
    );

Map<String, dynamic> _$$_AppNoticeDtoToJson(_$_AppNoticeDto instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'description': instance.description,
      'negativeButton': instance.negativeButton,
      'positiveButton': instance.positiveButton,
      'isForcedFinish': instance.isForcedFinish,
    };

_$_AppNoticeButtonInfoDto _$$_AppNoticeButtonInfoDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AppNoticeButtonInfoDto(
      title: json['title'] as String,
      deeplink: json['deeplink'] as String,
    );

Map<String, dynamic> _$$_AppNoticeButtonInfoDtoToJson(
        _$_AppNoticeButtonInfoDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'deeplink': instance.deeplink,
    };
