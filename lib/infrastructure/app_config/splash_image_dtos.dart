import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/app_config/model/splash_image.dart';
import 'package:snowrun/domain/core/value_objects.dart';

part 'splash_image_dtos.freezed.dart';

part 'splash_image_dtos.g.dart';

@freezed
class SplashImageDto with _$SplashImageDto {
    const SplashImageDto._();

    const factory SplashImageDto({
        @JsonKey(name: 'splashImage') required String splashImage,
    }) = _SplashImageDto;

    factory SplashImageDto.fromDomain(SplashImage splashImage) {
        return SplashImageDto(
            splashImage: splashImage.splashUrl.getOrCrash(),
        );
    }

    SplashImage toDomain() {
        return SplashImage(
            splashUrl: StringVO(splashImage),
        );
    }

    factory SplashImageDto.fromJson(Map<String, dynamic> json) =>
        _$SplashImageDtoFromJson(json);
}