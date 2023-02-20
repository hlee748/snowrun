// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notice_button_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppNoticeButtonInfo {
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get deeplink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNoticeButtonInfoCopyWith<AppNoticeButtonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNoticeButtonInfoCopyWith<$Res> {
  factory $AppNoticeButtonInfoCopyWith(
          AppNoticeButtonInfo value, $Res Function(AppNoticeButtonInfo) then) =
      _$AppNoticeButtonInfoCopyWithImpl<$Res, AppNoticeButtonInfo>;
  @useResult
  $Res call({StringVO title, StringVO deeplink});
}

/// @nodoc
class _$AppNoticeButtonInfoCopyWithImpl<$Res, $Val extends AppNoticeButtonInfo>
    implements $AppNoticeButtonInfoCopyWith<$Res> {
  _$AppNoticeButtonInfoCopyWithImpl(this._value, this._then);

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
              as StringVO,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppNoticeButtonInfoCopyWith<$Res>
    implements $AppNoticeButtonInfoCopyWith<$Res> {
  factory _$$_AppNoticeButtonInfoCopyWith(_$_AppNoticeButtonInfo value,
          $Res Function(_$_AppNoticeButtonInfo) then) =
      __$$_AppNoticeButtonInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO title, StringVO deeplink});
}

/// @nodoc
class __$$_AppNoticeButtonInfoCopyWithImpl<$Res>
    extends _$AppNoticeButtonInfoCopyWithImpl<$Res, _$_AppNoticeButtonInfo>
    implements _$$_AppNoticeButtonInfoCopyWith<$Res> {
  __$$_AppNoticeButtonInfoCopyWithImpl(_$_AppNoticeButtonInfo _value,
      $Res Function(_$_AppNoticeButtonInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? deeplink = null,
  }) {
    return _then(_$_AppNoticeButtonInfo(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_AppNoticeButtonInfo extends _AppNoticeButtonInfo {
  const _$_AppNoticeButtonInfo({required this.title, required this.deeplink})
      : super._();

  @override
  final StringVO title;
  @override
  final StringVO deeplink;

  @override
  String toString() {
    return 'AppNoticeButtonInfo(title: $title, deeplink: $deeplink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNoticeButtonInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, deeplink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNoticeButtonInfoCopyWith<_$_AppNoticeButtonInfo> get copyWith =>
      __$$_AppNoticeButtonInfoCopyWithImpl<_$_AppNoticeButtonInfo>(
          this, _$identity);
}

abstract class _AppNoticeButtonInfo extends AppNoticeButtonInfo {
  const factory _AppNoticeButtonInfo(
      {required final StringVO title,
      required final StringVO deeplink}) = _$_AppNoticeButtonInfo;
  const _AppNoticeButtonInfo._() : super._();

  @override
  StringVO get title;
  @override
  StringVO get deeplink;
  @override
  @JsonKey(ignore: true)
  _$$_AppNoticeButtonInfoCopyWith<_$_AppNoticeButtonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
