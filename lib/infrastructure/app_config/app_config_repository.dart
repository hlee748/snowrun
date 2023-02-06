import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/domain/app_config/app_config_failure.dart';
import 'package:snowrun/domain/app_config/i_app_config_repository.dart';
import 'package:snowrun/domain/app_config/model/splash_image.dart';
import 'package:snowrun/infrastructure/app_config/splash_image_dtos.dart';

@LazySingleton(as: IAppConfigRepository)
class AppConfigRepository implements IAppConfigRepository {
  @override
  Future<Either<AppConfigFailure, SplashImage>> get(
      String splashUrl) async{
    final response = await get(SplashImageDto(
    splashImage: splashUrl) as String);
    // final infoJson =
    // json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final splashImage = SplashImageDto.fromJson(response as Map<String, dynamic>).toDomain();
    return right(splashImage);
  }

}
