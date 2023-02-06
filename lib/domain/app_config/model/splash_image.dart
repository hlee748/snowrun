// Flutter imports:
import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_image.freezed.dart';

@freezed
class SplashImage with _$SplashImage {
  const SplashImage._();

  const factory SplashImage({
    required StringVO splashUrl,
  }) = _SplashImage;

  factory SplashImage.empty() => SplashImage(
    splashUrl: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return splashUrl.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}
