import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'app_notice.freezed.dart';
@freezed
class AppNotice with _$AppNotice {
  const AppNotice._();
  const factory AppNotice({
    required StringVO imageUrl,
    required StringVO title,
    required StringVO description,
    required AppNoticeButtonInfoVO negativeButton,
    required AppNoticeButtonInfoVO positiveButton,
    required BooleanVO isForcedFinish,
  }) = _AppNotice;

  factory AppNotice.empty() => AppNotice(
    imageUrl: StringVO(null),
    title: StringVO(null),
    description: StringVO(null),
    negativeButton: AppNoticeButtonInfoVO(null),
    positiveButton: AppNoticeButtonInfoVO(null),
    isForcedFinish: BooleanVO(false),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return imageUrl.failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(negativeButton.failureOrUnit)
        .andThen(positiveButton.failureOrUnit)
        .andThen(isForcedFinish.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}