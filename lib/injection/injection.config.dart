// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i4;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:snowrun/application/app-info/app_info_bloc.dart' as _i16;
import 'package:snowrun/application/app_config/app_config_bloc.dart' as _i15;
import 'package:snowrun/application/bottom_navigation/bottom_navigation_bloc.dart'
    as _i3;
import 'package:snowrun/application/record/record_bloc.dart' as _i14;
import 'package:snowrun/domain/app-info/i_app_info_repository.dart' as _i9;
import 'package:snowrun/domain/app_config/i_app_config_repository.dart' as _i7;
import 'package:snowrun/domain/record/i_record_repository.dart' as _i11;
import 'package:snowrun/infrastructure/app-info/app_info_repository.dart'
    as _i10;
import 'package:snowrun/infrastructure/app_config/app_config_repository.dart'
    as _i8;
import 'package:snowrun/infrastructure/hive/hive_provider.dart' as _i13;
import 'package:snowrun/infrastructure/record/record_repository.dart' as _i12;
import 'package:snowrun/utils/record_service.dart' as _i6;

import 'injectable_module.dart' as _i17;

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
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.BottomNavigationBloc>(() => _i3.BottomNavigationBloc());
  gh.lazySingleton<_i4.DeviceInfoPlugin>(
      () => injectableModule.deviceInfoPlugin);
  gh.lazySingleton<_i5.FirebaseRemoteConfig>(
      () => injectableModule.firebaseRemoteConfig);
  gh.singleton<_i6.HiveProvider>(_i6.HiveProvider());
  gh.lazySingleton<_i7.IAppConfigRepository>(() => _i8.AppConfigRepository());
  gh.lazySingleton<_i9.IAppInfoRepository>(
      () => _i10.AppInfoRepository(gh<_i5.FirebaseRemoteConfig>()));
  gh.lazySingleton<_i11.IRecordRepository>(() => _i12.RecordRepository());
  gh.singleton<_i13.LocalStore>(_i13.LocalStore());
  gh.factory<_i14.RecordBloc>(() => _i14.RecordBloc());
  gh.factory<_i15.AppConfigBloc>(
      () => _i15.AppConfigBloc(gh<_i7.IAppConfigRepository>()));
  gh.singleton<_i16.AppInfoBloc>(
      _i16.AppInfoBloc(gh<_i9.IAppInfoRepository>()));
  return getIt;
}

class _$InjectableModule extends _i17.InjectableModule {}
