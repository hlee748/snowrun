// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppInfoDto _$AppInfoDtoFromJson(Map<String, dynamic> json) {
  return _AppInfoDto.fromJson(json);
}

/// @nodoc
mixin _$AppInfoDto {
  @JsonKey(name: 'appVersion')
  AppVersionDto? get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'appNotice')
  AppNoticeDto? get appNotice => throw _privateConstructorUsedError;
  @JsonKey(name: 'appOperationInfos')
  List<AppOperationInfoDto>? get appOperationInfos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppInfoDtoCopyWith<AppInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoDtoCopyWith<$Res> {
  factory $AppInfoDtoCopyWith(
          AppInfoDto value, $Res Function(AppInfoDto) then) =
      _$AppInfoDtoCopyWithImpl<$Res, AppInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'appVersion')
          AppVersionDto? appVersion,
      @JsonKey(name: 'appNotice')
          AppNoticeDto? appNotice,
      @JsonKey(name: 'appOperationInfos')
          List<AppOperationInfoDto>? appOperationInfos});

  $AppVersionDtoCopyWith<$Res>? get appVersion;
  $AppNoticeDtoCopyWith<$Res>? get appNotice;
}

/// @nodoc
class _$AppInfoDtoCopyWithImpl<$Res, $Val extends AppInfoDto>
    implements $AppInfoDtoCopyWith<$Res> {
  _$AppInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = freezed,
    Object? appNotice = freezed,
    Object? appOperationInfos = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersionDto?,
      appNotice: freezed == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNoticeDto?,
      appOperationInfos: freezed == appOperationInfos
          ? _value.appOperationInfos
          : appOperationInfos // ignore: cast_nullable_to_non_nullable
              as List<AppOperationInfoDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppVersionDtoCopyWith<$Res>? get appVersion {
    if (_value.appVersion == null) {
      return null;
    }

    return $AppVersionDtoCopyWith<$Res>(_value.appVersion!, (value) {
      return _then(_value.copyWith(appVersion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeDtoCopyWith<$Res>? get appNotice {
    if (_value.appNotice == null) {
      return null;
    }

    return $AppNoticeDtoCopyWith<$Res>(_value.appNotice!, (value) {
      return _then(_value.copyWith(appNotice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppInfoDtoCopyWith<$Res>
    implements $AppInfoDtoCopyWith<$Res> {
  factory _$$_AppInfoDtoCopyWith(
          _$_AppInfoDto value, $Res Function(_$_AppInfoDto) then) =
      __$$_AppInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'appVersion')
          AppVersionDto? appVersion,
      @JsonKey(name: 'appNotice')
          AppNoticeDto? appNotice,
      @JsonKey(name: 'appOperationInfos')
          List<AppOperationInfoDto>? appOperationInfos});

  @override
  $AppVersionDtoCopyWith<$Res>? get appVersion;
  @override
  $AppNoticeDtoCopyWith<$Res>? get appNotice;
}

/// @nodoc
class __$$_AppInfoDtoCopyWithImpl<$Res>
    extends _$AppInfoDtoCopyWithImpl<$Res, _$_AppInfoDto>
    implements _$$_AppInfoDtoCopyWith<$Res> {
  __$$_AppInfoDtoCopyWithImpl(
      _$_AppInfoDto _value, $Res Function(_$_AppInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = freezed,
    Object? appNotice = freezed,
    Object? appOperationInfos = freezed,
  }) {
    return _then(_$_AppInfoDto(
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersionDto?,
      appNotice: freezed == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNoticeDto?,
      appOperationInfos: freezed == appOperationInfos
          ? _value._appOperationInfos
          : appOperationInfos // ignore: cast_nullable_to_non_nullable
              as List<AppOperationInfoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppInfoDto extends _AppInfoDto {
  const _$_AppInfoDto(
      {@JsonKey(name: 'appVersion')
          this.appVersion,
      @JsonKey(name: 'appNotice')
          this.appNotice,
      @JsonKey(name: 'appOperationInfos')
          final List<AppOperationInfoDto>? appOperationInfos})
      : _appOperationInfos = appOperationInfos,
        super._();

  factory _$_AppInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'appVersion')
  final AppVersionDto? appVersion;
  @override
  @JsonKey(name: 'appNotice')
  final AppNoticeDto? appNotice;
  final List<AppOperationInfoDto>? _appOperationInfos;
  @override
  @JsonKey(name: 'appOperationInfos')
  List<AppOperationInfoDto>? get appOperationInfos {
    final value = _appOperationInfos;
    if (value == null) return null;
    if (_appOperationInfos is EqualUnmodifiableListView)
      return _appOperationInfos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppInfoDto(appVersion: $appVersion, appNotice: $appNotice, appOperationInfos: $appOperationInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppInfoDto &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.appNotice, appNotice) ||
                other.appNotice == appNotice) &&
            const DeepCollectionEquality()
                .equals(other._appOperationInfos, _appOperationInfos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appVersion, appNotice,
      const DeepCollectionEquality().hash(_appOperationInfos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppInfoDtoCopyWith<_$_AppInfoDto> get copyWith =>
      __$$_AppInfoDtoCopyWithImpl<_$_AppInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppInfoDtoToJson(
      this,
    );
  }
}

abstract class _AppInfoDto extends AppInfoDto {
  const factory _AppInfoDto(
      {@JsonKey(name: 'appVersion')
          final AppVersionDto? appVersion,
      @JsonKey(name: 'appNotice')
          final AppNoticeDto? appNotice,
      @JsonKey(name: 'appOperationInfos')
          final List<AppOperationInfoDto>? appOperationInfos}) = _$_AppInfoDto;
  const _AppInfoDto._() : super._();

  factory _AppInfoDto.fromJson(Map<String, dynamic> json) =
      _$_AppInfoDto.fromJson;

  @override
  @JsonKey(name: 'appVersion')
  AppVersionDto? get appVersion;
  @override
  @JsonKey(name: 'appNotice')
  AppNoticeDto? get appNotice;
  @override
  @JsonKey(name: 'appOperationInfos')
  List<AppOperationInfoDto>? get appOperationInfos;
  @override
  @JsonKey(ignore: true)
  _$$_AppInfoDtoCopyWith<_$_AppInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AppVersionDto _$AppVersionDtoFromJson(Map<String, dynamic> json) {
  return _AppVersionDto.fromJson(json);
}

/// @nodoc
mixin _$AppVersionDto {
  @JsonKey(name: 'min')
  String get min => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest')
  String get latest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionDtoCopyWith<AppVersionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionDtoCopyWith<$Res> {
  factory $AppVersionDtoCopyWith(
          AppVersionDto value, $Res Function(AppVersionDto) then) =
      _$AppVersionDtoCopyWithImpl<$Res, AppVersionDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min') String min,
      @JsonKey(name: 'latest') String latest});
}

/// @nodoc
class _$AppVersionDtoCopyWithImpl<$Res, $Val extends AppVersionDto>
    implements $AppVersionDtoCopyWith<$Res> {
  _$AppVersionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? latest = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppVersionDtoCopyWith<$Res>
    implements $AppVersionDtoCopyWith<$Res> {
  factory _$$_AppVersionDtoCopyWith(
          _$_AppVersionDto value, $Res Function(_$_AppVersionDto) then) =
      __$$_AppVersionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min') String min,
      @JsonKey(name: 'latest') String latest});
}

/// @nodoc
class __$$_AppVersionDtoCopyWithImpl<$Res>
    extends _$AppVersionDtoCopyWithImpl<$Res, _$_AppVersionDto>
    implements _$$_AppVersionDtoCopyWith<$Res> {
  __$$_AppVersionDtoCopyWithImpl(
      _$_AppVersionDto _value, $Res Function(_$_AppVersionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? latest = null,
  }) {
    return _then(_$_AppVersionDto(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppVersionDto extends _AppVersionDto {
  const _$_AppVersionDto(
      {@JsonKey(name: 'min') required this.min,
      @JsonKey(name: 'latest') required this.latest})
      : super._();

  factory _$_AppVersionDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppVersionDtoFromJson(json);

  @override
  @JsonKey(name: 'min')
  final String min;
  @override
  @JsonKey(name: 'latest')
  final String latest;

  @override
  String toString() {
    return 'AppVersionDto(min: $min, latest: $latest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppVersionDto &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.latest, latest) || other.latest == latest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min, latest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppVersionDtoCopyWith<_$_AppVersionDto> get copyWith =>
      __$$_AppVersionDtoCopyWithImpl<_$_AppVersionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppVersionDtoToJson(
      this,
    );
  }
}

abstract class _AppVersionDto extends AppVersionDto {
  const factory _AppVersionDto(
          {@JsonKey(name: 'min') required final String min,
          @JsonKey(name: 'latest') required final String latest}) =
      _$_AppVersionDto;
  const _AppVersionDto._() : super._();

  factory _AppVersionDto.fromJson(Map<String, dynamic> json) =
      _$_AppVersionDto.fromJson;

  @override
  @JsonKey(name: 'min')
  String get min;
  @override
  @JsonKey(name: 'latest')
  String get latest;
  @override
  @JsonKey(ignore: true)
  _$$_AppVersionDtoCopyWith<_$_AppVersionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AppNoticeDto _$AppNoticeDtoFromJson(Map<String, dynamic> json) {
  return _AppNoticeDto.fromJson(json);
}

/// @nodoc
mixin _$AppNoticeDto {
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'negativeButton')
  AppNoticeButtonInfoDto? get negativeButton =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'positiveButton')
  AppNoticeButtonInfoDto? get positiveButton =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'isForcedFinish')
  bool? get isForcedFinish => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppNoticeDtoCopyWith<AppNoticeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNoticeDtoCopyWith<$Res> {
  factory $AppNoticeDtoCopyWith(
          AppNoticeDto value, $Res Function(AppNoticeDto) then) =
      _$AppNoticeDtoCopyWithImpl<$Res, AppNoticeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'negativeButton') AppNoticeButtonInfoDto? negativeButton,
      @JsonKey(name: 'positiveButton') AppNoticeButtonInfoDto? positiveButton,
      @JsonKey(name: 'isForcedFinish') bool? isForcedFinish});

  $AppNoticeButtonInfoDtoCopyWith<$Res>? get negativeButton;
  $AppNoticeButtonInfoDtoCopyWith<$Res>? get positiveButton;
}

/// @nodoc
class _$AppNoticeDtoCopyWithImpl<$Res, $Val extends AppNoticeDto>
    implements $AppNoticeDtoCopyWith<$Res> {
  _$AppNoticeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? negativeButton = freezed,
    Object? positiveButton = freezed,
    Object? isForcedFinish = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      negativeButton: freezed == negativeButton
          ? _value.negativeButton
          : negativeButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfoDto?,
      positiveButton: freezed == positiveButton
          ? _value.positiveButton
          : positiveButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfoDto?,
      isForcedFinish: freezed == isForcedFinish
          ? _value.isForcedFinish
          : isForcedFinish // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeButtonInfoDtoCopyWith<$Res>? get negativeButton {
    if (_value.negativeButton == null) {
      return null;
    }

    return $AppNoticeButtonInfoDtoCopyWith<$Res>(_value.negativeButton!,
        (value) {
      return _then(_value.copyWith(negativeButton: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeButtonInfoDtoCopyWith<$Res>? get positiveButton {
    if (_value.positiveButton == null) {
      return null;
    }

    return $AppNoticeButtonInfoDtoCopyWith<$Res>(_value.positiveButton!,
        (value) {
      return _then(_value.copyWith(positiveButton: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppNoticeDtoCopyWith<$Res>
    implements $AppNoticeDtoCopyWith<$Res> {
  factory _$$_AppNoticeDtoCopyWith(
          _$_AppNoticeDto value, $Res Function(_$_AppNoticeDto) then) =
      __$$_AppNoticeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'negativeButton') AppNoticeButtonInfoDto? negativeButton,
      @JsonKey(name: 'positiveButton') AppNoticeButtonInfoDto? positiveButton,
      @JsonKey(name: 'isForcedFinish') bool? isForcedFinish});

  @override
  $AppNoticeButtonInfoDtoCopyWith<$Res>? get negativeButton;
  @override
  $AppNoticeButtonInfoDtoCopyWith<$Res>? get positiveButton;
}

/// @nodoc
class __$$_AppNoticeDtoCopyWithImpl<$Res>
    extends _$AppNoticeDtoCopyWithImpl<$Res, _$_AppNoticeDto>
    implements _$$_AppNoticeDtoCopyWith<$Res> {
  __$$_AppNoticeDtoCopyWithImpl(
      _$_AppNoticeDto _value, $Res Function(_$_AppNoticeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? negativeButton = freezed,
    Object? positiveButton = freezed,
    Object? isForcedFinish = freezed,
  }) {
    return _then(_$_AppNoticeDto(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      negativeButton: freezed == negativeButton
          ? _value.negativeButton
          : negativeButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfoDto?,
      positiveButton: freezed == positiveButton
          ? _value.positiveButton
          : positiveButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfoDto?,
      isForcedFinish: freezed == isForcedFinish
          ? _value.isForcedFinish
          : isForcedFinish // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppNoticeDto extends _AppNoticeDto {
  const _$_AppNoticeDto(
      {@JsonKey(name: 'imageUrl') required this.imageUrl,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'negativeButton') required this.negativeButton,
      @JsonKey(name: 'positiveButton') required this.positiveButton,
      @JsonKey(name: 'isForcedFinish') required this.isForcedFinish})
      : super._();

  factory _$_AppNoticeDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppNoticeDtoFromJson(json);

  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'negativeButton')
  final AppNoticeButtonInfoDto? negativeButton;
  @override
  @JsonKey(name: 'positiveButton')
  final AppNoticeButtonInfoDto? positiveButton;
  @override
  @JsonKey(name: 'isForcedFinish')
  final bool? isForcedFinish;

  @override
  String toString() {
    return 'AppNoticeDto(imageUrl: $imageUrl, title: $title, description: $description, negativeButton: $negativeButton, positiveButton: $positiveButton, isForcedFinish: $isForcedFinish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNoticeDto &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.negativeButton, negativeButton) ||
                other.negativeButton == negativeButton) &&
            (identical(other.positiveButton, positiveButton) ||
                other.positiveButton == positiveButton) &&
            (identical(other.isForcedFinish, isForcedFinish) ||
                other.isForcedFinish == isForcedFinish));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, title, description,
      negativeButton, positiveButton, isForcedFinish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNoticeDtoCopyWith<_$_AppNoticeDto> get copyWith =>
      __$$_AppNoticeDtoCopyWithImpl<_$_AppNoticeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppNoticeDtoToJson(
      this,
    );
  }
}

abstract class _AppNoticeDto extends AppNoticeDto {
  const factory _AppNoticeDto(
      {@JsonKey(name: 'imageUrl')
          required final String? imageUrl,
      @JsonKey(name: 'title')
          required final String? title,
      @JsonKey(name: 'description')
          required final String? description,
      @JsonKey(name: 'negativeButton')
          required final AppNoticeButtonInfoDto? negativeButton,
      @JsonKey(name: 'positiveButton')
          required final AppNoticeButtonInfoDto? positiveButton,
      @JsonKey(name: 'isForcedFinish')
          required final bool? isForcedFinish}) = _$_AppNoticeDto;
  const _AppNoticeDto._() : super._();

  factory _AppNoticeDto.fromJson(Map<String, dynamic> json) =
      _$_AppNoticeDto.fromJson;

  @override
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'negativeButton')
  AppNoticeButtonInfoDto? get negativeButton;
  @override
  @JsonKey(name: 'positiveButton')
  AppNoticeButtonInfoDto? get positiveButton;
  @override
  @JsonKey(name: 'isForcedFinish')
  bool? get isForcedFinish;
  @override
  @JsonKey(ignore: true)
  _$$_AppNoticeDtoCopyWith<_$_AppNoticeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AppNoticeButtonInfoDto _$AppNoticeButtonInfoDtoFromJson(
    Map<String, dynamic> json) {
  return _AppNoticeButtonInfoDto.fromJson(json);
}

/// @nodoc
mixin _$AppNoticeButtonInfoDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'deeplink')
  String get deeplink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppNoticeButtonInfoDtoCopyWith<AppNoticeButtonInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNoticeButtonInfoDtoCopyWith<$Res> {
  factory $AppNoticeButtonInfoDtoCopyWith(AppNoticeButtonInfoDto value,
          $Res Function(AppNoticeButtonInfoDto) then) =
      _$AppNoticeButtonInfoDtoCopyWithImpl<$Res, AppNoticeButtonInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'deeplink') String deeplink});
}

/// @nodoc
class _$AppNoticeButtonInfoDtoCopyWithImpl<$Res,
        $Val extends AppNoticeButtonInfoDto>
    implements $AppNoticeButtonInfoDtoCopyWith<$Res> {
  _$AppNoticeButtonInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? deeplink = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppNoticeButtonInfoDtoCopyWith<$Res>
    implements $AppNoticeButtonInfoDtoCopyWith<$Res> {
  factory _$$_AppNoticeButtonInfoDtoCopyWith(_$_AppNoticeButtonInfoDto value,
          $Res Function(_$_AppNoticeButtonInfoDto) then) =
      __$$_AppNoticeButtonInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'deeplink') String deeplink});
}

/// @nodoc
class __$$_AppNoticeButtonInfoDtoCopyWithImpl<$Res>
    extends _$AppNoticeButtonInfoDtoCopyWithImpl<$Res,
        _$_AppNoticeButtonInfoDto>
    implements _$$_AppNoticeButtonInfoDtoCopyWith<$Res> {
  __$$_AppNoticeButtonInfoDtoCopyWithImpl(_$_AppNoticeButtonInfoDto _value,
      $Res Function(_$_AppNoticeButtonInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? deeplink = null,
  }) {
    return _then(_$_AppNoticeButtonInfoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppNoticeButtonInfoDto extends _AppNoticeButtonInfoDto {
  const _$_AppNoticeButtonInfoDto(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'deeplink') required this.deeplink})
      : super._();

  factory _$_AppNoticeButtonInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppNoticeButtonInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'deeplink')
  final String deeplink;

  @override
  String toString() {
    return 'AppNoticeButtonInfoDto(title: $title, deeplink: $deeplink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNoticeButtonInfoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, deeplink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNoticeButtonInfoDtoCopyWith<_$_AppNoticeButtonInfoDto> get copyWith =>
      __$$_AppNoticeButtonInfoDtoCopyWithImpl<_$_AppNoticeButtonInfoDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppNoticeButtonInfoDtoToJson(
      this,
    );
  }
}

abstract class _AppNoticeButtonInfoDto extends AppNoticeButtonInfoDto {
  const factory _AppNoticeButtonInfoDto(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'deeplink') required final String deeplink}) =
      _$_AppNoticeButtonInfoDto;
  const _AppNoticeButtonInfoDto._() : super._();

  factory _AppNoticeButtonInfoDto.fromJson(Map<String, dynamic> json) =
      _$_AppNoticeButtonInfoDto.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'deeplink')
  String get deeplink;
  @override
  @JsonKey(ignore: true)
  _$$_AppNoticeButtonInfoDtoCopyWith<_$_AppNoticeButtonInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AppOperationInfoDto _$AppOperationInfoDtoFromJson(Map<String, dynamic> json) {
  return _AppOperationInfoDto.fromJson(json);
}

/// @nodoc
mixin _$AppOperationInfoDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppOperationInfoDtoCopyWith<AppOperationInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOperationInfoDtoCopyWith<$Res> {
  factory $AppOperationInfoDtoCopyWith(
          AppOperationInfoDto value, $Res Function(AppOperationInfoDto) then) =
      _$AppOperationInfoDtoCopyWithImpl<$Res, AppOperationInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'link') String link});
}

/// @nodoc
class _$AppOperationInfoDtoCopyWithImpl<$Res, $Val extends AppOperationInfoDto>
    implements $AppOperationInfoDtoCopyWith<$Res> {
  _$AppOperationInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppOperationInfoDtoCopyWith<$Res>
    implements $AppOperationInfoDtoCopyWith<$Res> {
  factory _$$_AppOperationInfoDtoCopyWith(_$_AppOperationInfoDto value,
          $Res Function(_$_AppOperationInfoDto) then) =
      __$$_AppOperationInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'link') String link});
}

/// @nodoc
class __$$_AppOperationInfoDtoCopyWithImpl<$Res>
    extends _$AppOperationInfoDtoCopyWithImpl<$Res, _$_AppOperationInfoDto>
    implements _$$_AppOperationInfoDtoCopyWith<$Res> {
  __$$_AppOperationInfoDtoCopyWithImpl(_$_AppOperationInfoDto _value,
      $Res Function(_$_AppOperationInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_$_AppOperationInfoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppOperationInfoDto extends _AppOperationInfoDto {
  const _$_AppOperationInfoDto(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'link') required this.link})
      : super._();

  factory _$_AppOperationInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppOperationInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'link')
  final String link;

  @override
  String toString() {
    return 'AppOperationInfoDto(title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppOperationInfoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppOperationInfoDtoCopyWith<_$_AppOperationInfoDto> get copyWith =>
      __$$_AppOperationInfoDtoCopyWithImpl<_$_AppOperationInfoDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppOperationInfoDtoToJson(
      this,
    );
  }
}

abstract class _AppOperationInfoDto extends AppOperationInfoDto {
  const factory _AppOperationInfoDto(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'link') required final String link}) =
      _$_AppOperationInfoDto;
  const _AppOperationInfoDto._() : super._();

  factory _AppOperationInfoDto.fromJson(Map<String, dynamic> json) =
      _$_AppOperationInfoDto.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'link')
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_AppOperationInfoDtoCopyWith<_$_AppOperationInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
