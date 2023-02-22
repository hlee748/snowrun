import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/domain/core/value_objects.dart';
import 'package:snowrun/domain/landing/i_landing_repository.dart';
import 'package:snowrun/domain/landing/landing_failure.dart';
import 'package:snowrun/domain/landing/model/landing.dart';

@LazySingleton(as: ILandingRepository)
class LandingRepository implements ILandingRepository {
  @override
  Future<Either<LandingFailure, Landing>> getLanding() async {
    // final response = await getSplash(SplashImageDto();
    // final infoJson =
    // json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    // final splashImage = SplashImageDto.fromJson(response as Map<String,
    // dynamic>).toDomain();
    return right(Landing(
      title: StringVO("Snow\nRun"),
      imageUrl: StringVO("assets/pngs/snow_ski.png"),
    ));
  }
}
