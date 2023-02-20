import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const AppVersion._();

  const factory AppVersion({
    required VersionVO min,
    required VersionVO latest,
    VersionVO? current,
  }) = _AppVersion;

  factory AppVersion.empty() => AppVersion(
    min: VersionVO(""),
    latest: VersionVO(""),
    current: VersionVO(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return min.failureOrUnit
        .andThen(latest.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
