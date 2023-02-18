// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Record {
  DateVO get startedAt => throw _privateConstructorUsedError;
  DoubleVO get longitude => throw _privateConstructorUsedError;
  DoubleVO get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res, Record>;
  @useResult
  $Res call({DateVO startedAt, DoubleVO longitude, DoubleVO latitude});
}

/// @nodoc
class _$RecordCopyWithImpl<$Res, $Val extends Record>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateVO,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$_RecordCopyWith(_$_Record value, $Res Function(_$_Record) then) =
      __$$_RecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateVO startedAt, DoubleVO longitude, DoubleVO latitude});
}

/// @nodoc
class __$$_RecordCopyWithImpl<$Res>
    extends _$RecordCopyWithImpl<$Res, _$_Record>
    implements _$$_RecordCopyWith<$Res> {
  __$$_RecordCopyWithImpl(_$_Record _value, $Res Function(_$_Record) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_Record(
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateVO,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
    ));
  }
}

/// @nodoc

class _$_Record extends _Record {
  const _$_Record(
      {required this.startedAt,
      required this.longitude,
      required this.latitude})
      : super._();

  @override
  final DateVO startedAt;
  @override
  final DoubleVO longitude;
  @override
  final DoubleVO latitude;

  @override
  String toString() {
    return 'Record(startedAt: $startedAt, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Record &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startedAt, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      __$$_RecordCopyWithImpl<_$_Record>(this, _$identity);
}

abstract class _Record extends Record {
  const factory _Record(
      {required final DateVO startedAt,
      required final DoubleVO longitude,
      required final DoubleVO latitude}) = _$_Record;
  const _Record._() : super._();

  @override
  DateVO get startedAt;
  @override
  DoubleVO get longitude;
  @override
  DoubleVO get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      throw _privateConstructorUsedError;
}
