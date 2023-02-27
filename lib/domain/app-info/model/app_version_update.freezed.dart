// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppVersionUpdate {
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionUpdateCopyWith<AppVersionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionUpdateCopyWith<$Res> {
  factory $AppVersionUpdateCopyWith(
          AppVersionUpdate value, $Res Function(AppVersionUpdate) then) =
      _$AppVersionUpdateCopyWithImpl<$Res, AppVersionUpdate>;
  @useResult
  $Res call({StringVO title, StringVO description});
}

/// @nodoc
class _$AppVersionUpdateCopyWithImpl<$Res, $Val extends AppVersionUpdate>
    implements $AppVersionUpdateCopyWith<$Res> {
  _$AppVersionUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppVersionUpdateCopyWith<$Res>
    implements $AppVersionUpdateCopyWith<$Res> {
  factory _$$_AppVersionUpdateCopyWith(
          _$_AppVersionUpdate value, $Res Function(_$_AppVersionUpdate) then) =
      __$$_AppVersionUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO title, StringVO description});
}

/// @nodoc
class __$$_AppVersionUpdateCopyWithImpl<$Res>
    extends _$AppVersionUpdateCopyWithImpl<$Res, _$_AppVersionUpdate>
    implements _$$_AppVersionUpdateCopyWith<$Res> {
  __$$_AppVersionUpdateCopyWithImpl(
      _$_AppVersionUpdate _value, $Res Function(_$_AppVersionUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_AppVersionUpdate(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_AppVersionUpdate extends _AppVersionUpdate {
  const _$_AppVersionUpdate({required this.title, required this.description})
      : super._();

  @override
  final StringVO title;
  @override
  final StringVO description;

  @override
  String toString() {
    return 'AppVersionUpdate(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppVersionUpdate &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppVersionUpdateCopyWith<_$_AppVersionUpdate> get copyWith =>
      __$$_AppVersionUpdateCopyWithImpl<_$_AppVersionUpdate>(this, _$identity);
}

abstract class _AppVersionUpdate extends AppVersionUpdate {
  const factory _AppVersionUpdate(
      {required final StringVO title,
      required final StringVO description}) = _$_AppVersionUpdate;
  const _AppVersionUpdate._() : super._();

  @override
  StringVO get title;
  @override
  StringVO get description;
  @override
  @JsonKey(ignore: true)
  _$$_AppVersionUpdateCopyWith<_$_AppVersionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
