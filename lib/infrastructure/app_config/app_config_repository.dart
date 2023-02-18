import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/domain/app_config/app_config_failure.dart';
import 'package:snowrun/domain/app_config/i_app_config_repository.dart';
import 'package:snowrun/domain/app_config/model/splash_image.dart';
import 'package:snowrun/domain/core/value_objects.dart';

@LazySingleton(as: IAppConfigRepository)
class AppConfigRepository implements IAppConfigRepository {
  @override
  Future<Either<AppConfigFailure, SplashImage>> getSplash() async {
    // final response = await getSplash(SplashImageDto();
    // final infoJson =
    // json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    // final splashImage = SplashImageDto.fromJson(response as Map<String,
    // dynamic>).toDomain();
    return right(
        SplashImage(splashUrl: StringVO("assets/pngs/splash_image.png")));
  }
}
