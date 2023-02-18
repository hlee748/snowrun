// Flutter imports:
import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record.freezed.dart';

@freezed
class Record with _$Record {
  const Record._();

  const factory Record({
    required DateVO startedAt,
    required DoubleVO longitude,
    required DoubleVO latitude,
  }) = _Record;

  factory Record.empty() =>
      Record(
        startedAt: DateVO(DateTime.now()),
        longitude: DoubleVO(0.0),
        latitude: DoubleVO(0.0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return startedAt.failureOrUnit
        .andThen(longitude.failureOrUnit)
        .andThen(latitude.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
