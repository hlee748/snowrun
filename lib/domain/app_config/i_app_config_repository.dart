import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/app_config/app_config_failure.dart';
import 'package:snowrun/domain/app_config/model/splash_image.dart';

abstract class IAppConfigRepository {
  Future<Either<AppConfigFailure, SplashImage>> getSplash();
}