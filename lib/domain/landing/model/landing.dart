// Flutter imports:
import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/core/failures.dart';
import 'package:snowrun/domain/core/value_objects.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing.freezed.dart';

@freezed
class Landing with _$Landing {
  const Landing._();

  const factory Landing({
    required StringVO title,
    required StringVO imageUrl,
  }) = _Landing;

  factory Landing.empty() => Landing(
        title: StringVO(""),
    imageUrl: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(imageUrl.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
