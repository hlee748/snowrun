// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:snowrun/application/app_config/app_config_bloc.dart' as _i6;
import 'package:snowrun/application/bottom_navigation/bottom_navigation_bloc.dart'
    as _i3;
import 'package:snowrun/domain/app_config/i_app_config_repository.dart' as _i4;
import 'package:snowrun/infrastructure/app_config/app_config_repository.dart'
    as _i5;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.BottomNavigationBloc>(() => _i3.BottomNavigationBloc());
  gh.lazySingleton<_i4.IAppConfigRepository>(() => _i5.AppConfigRepository());
  gh.factory<_i6.AppConfigBloc>(
      () => _i6.AppConfigBloc(gh<_i4.IAppConfigRepository>()));
  return getIt;
}
