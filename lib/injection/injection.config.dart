// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:snowrun/application/app-info/app_info_bloc.dart' as _i20;
import 'package:snowrun/application/auth/o_auth_bloc.dart' as _i17;
import 'package:snowrun/application/bottom_navigation/bottom_navigation_bloc.dart'
    as _i3;
import 'package:snowrun/application/landing/landing_bloc.dart' as _i16;
import 'package:snowrun/application/record/record_bloc.dart' as _i18;
import 'package:snowrun/domain/app-info/i_app_info_repository.dart' as _i8;
import 'package:snowrun/domain/auth/i_firebase_auth_repository.dart' as _i10;
import 'package:snowrun/domain/landing/i_landing_repository.dart' as _i12;
import 'package:snowrun/domain/record/i_record_repository.dart' as _i14;
import 'package:snowrun/infrastructure/app-info/app_info_repository.dart'
    as _i9;
import 'package:snowrun/infrastructure/auth/firebase_auth_repository.dart'
    as _i11;
import 'package:snowrun/infrastructure/hive/hive_provider.dart' as _i7;
import 'package:snowrun/infrastructure/landing/landing_repository.dart' as _i13;
import 'package:snowrun/infrastructure/record/record_repository.dart' as _i15;
import 'package:snowrun/utils/record_service.dart' as _i19;

import 'injectable_module.dart' as _i21;

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
  gh.lazySingleton<_i5.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseRemoteConfig>(
      () => injectableModule.firebaseRemoteConfig);
  gh.singleton<_i7.HiveProvider>(_i7.HiveProvider());
  gh.lazySingleton<_i8.IAppInfoRepository>(
      () => _i9.AppInfoRepository(gh<_i6.FirebaseRemoteConfig>()));
  gh.lazySingleton<_i10.IFirebaseAuthRepository>(
      () => _i11.FirebaseAuthRepository(gh<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i12.ILandingRepository>(() => _i13.LandingRepository());
  gh.lazySingleton<_i14.IRecordRepository>(() => _i15.RecordRepository());
  gh.factory<_i16.LandingBloc>(
      () => _i16.LandingBloc(gh<_i12.ILandingRepository>()));
  gh.factory<_i17.OAuthBloc>(
      () => _i17.OAuthBloc(gh<_i10.IFirebaseAuthRepository>()));
  gh.singleton<_i18.RecordBloc>(_i18.RecordBloc());
  gh.singleton<_i19.RecordService>(_i19.RecordService());
  gh.singleton<_i20.AppInfoBloc>(
      _i20.AppInfoBloc(gh<_i8.IAppInfoRepository>()));
  return getIt;
}

class _$InjectableModule extends _i21.InjectableModule {}
