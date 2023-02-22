import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/landing/landing_failure.dart';
import 'package:snowrun/domain/landing/model/landing.dart';

abstract class ILandingRepository {
  Future<Either<LandingFailure, Landing>> getLanding();
}