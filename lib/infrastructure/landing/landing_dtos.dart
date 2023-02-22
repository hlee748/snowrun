import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun/domain/core/value_objects.dart';
import 'package:snowrun/domain/landing/model/landing.dart';

part 'landing_dtos.freezed.dart';

part 'landing_dtos.g.dart';

@freezed
class LandingDto with _$LandingDto {
    const LandingDto._();

    const factory LandingDto({
        @JsonKey(name: 'title') required String title,
        @JsonKey(name: 'image') required String imageUrl,
    }) = _LandingDto;

    factory LandingDto.fromDomain(Landing landing) {
        return LandingDto(
            title: landing.title.getOrCrash(),
            imageUrl: landing.imageUrl.getOrCrash(),
        );
    }

    Landing toDomain() {
        return Landing(
            title: StringVO(title),
            imageUrl: StringVO(imageUrl),
        );
    }

    factory LandingDto.fromJson(Map<String, dynamic> json) =>
        _$LandingDtoFromJson(json);
}