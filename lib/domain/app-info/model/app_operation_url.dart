import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/app-info/model/app_version.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'app_operation_url.freezed.dart';
@freezed
class AppOperationUrl with _$AppOperationUrl {
  const AppOperationUrl._();
  const factory AppOperationUrl({
    required StringVO terms,
    required StringVO privacyPolicy,
    required StringVO userLocationPolicy,
    required AppVersion appVersion,
  }) = _AppOperationUrl;

  factory AppOperationUrl.empty() => AppOperationUrl(
    terms: StringVO(null),
    privacyPolicy: StringVO(null),
    userLocationPolicy: StringVO(null),
    appVersion: AppVersion.empty(),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return terms.failureOrUnit
        .andThen(privacyPolicy.failureOrUnit)
        .andThen(userLocationPolicy.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}