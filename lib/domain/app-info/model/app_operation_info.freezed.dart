// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_operation_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppOperationInfo {
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppOperationInfoCopyWith<AppOperationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOperationInfoCopyWith<$Res> {
  factory $AppOperationInfoCopyWith(
          AppOperationInfo value, $Res Function(AppOperationInfo) then) =
      _$AppOperationInfoCopyWithImpl<$Res, AppOperationInfo>;
  @useResult
  $Res call({StringVO title, StringVO link});
}

/// @nodoc
class _$AppOperationInfoCopyWithImpl<$Res, $Val extends AppOperationInfo>
    implements $AppOperationInfoCopyWith<$Res> {
  _$AppOperationInfoCopyWithImpl(this._value, this._then);

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
              as StringVO,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppOperationInfoCopyWith<$Res>
    implements $AppOperationInfoCopyWith<$Res> {
  factory _$$_AppOperationInfoCopyWith(
          _$_AppOperationInfo value, $Res Function(_$_AppOperationInfo) then) =
      __$$_AppOperationInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO title, StringVO link});
}

/// @nodoc
class __$$_AppOperationInfoCopyWithImpl<$Res>
    extends _$AppOperationInfoCopyWithImpl<$Res, _$_AppOperationInfo>
    implements _$$_AppOperationInfoCopyWith<$Res> {
  __$$_AppOperationInfoCopyWithImpl(
      _$_AppOperationInfo _value, $Res Function(_$_AppOperationInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_$_AppOperationInfo(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_AppOperationInfo extends _AppOperationInfo {
  const _$_AppOperationInfo({required this.title, required this.link})
      : super._();

  @override
  final StringVO title;
  @override
  final StringVO link;

  @override
  String toString() {
    return 'AppOperationInfo(title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppOperationInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppOperationInfoCopyWith<_$_AppOperationInfo> get copyWith =>
      __$$_AppOperationInfoCopyWithImpl<_$_AppOperationInfo>(this, _$identity);
}

abstract class _AppOperationInfo extends AppOperationInfo {
  const factory _AppOperationInfo(
      {required final StringVO title,
      required final StringVO link}) = _$_AppOperationInfo;
  const _AppOperationInfo._() : super._();

  @override
  StringVO get title;
  @override
  StringVO get link;
  @override
  @JsonKey(ignore: true)
  _$$_AppOperationInfoCopyWith<_$_AppOperationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
