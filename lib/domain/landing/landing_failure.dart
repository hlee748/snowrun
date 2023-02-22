// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_failure.freezed.dart';

@freezed
class LandingFailure with _$LandingFailure {
  const factory LandingFailure.unexpected() = _Unexpected;
}
