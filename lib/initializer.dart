// Flutter imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Package imports:
import 'package:snowrun/injection.dart';
import 'package:snowrun/routes/router.gr.dart';
import 'package:snowrun/infrastructure/hive/hive_provider.dart';
import 'package:snowrun/utils/record_service.dart';

import 'firebase_options.dart';
// import 'package:intl/date_symbol_data_local.dart';

// import 'infrastructure/api/api_provider.dart';

// Project imports:

Future<void> initServices() async {
  WidgetsFlutterBinding.ensureInitialized();

  // getIt
  configureDependencies();

  // autoRoute
  getIt.registerSingleton<AppRouter>(AppRouter());

  //background service
  await getIt<HiveProvider>().initializeService();

  //hive
  await Hive.initFlutter();
  final localStore = getIt<LocalStore>();
  await localStore.init();

  //firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

}

// Future<void> initServices({
  // bool isAnalyticsCollectEnabled = false,
  // bool isCrashlyticsCollectionEnabled = false,
// }) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   getIt.registerSingleton<AppRouter>(AppRouter());

  //core module
  // configureDependencies();

  // initializeDateFormatting();

  // firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FirebaseCrashlytics.instance
  //     .setCrashlyticsCollectionEnabled(isCrashlyticsCollectionEnabled);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  // await FirebaseRemoteConfig.instance.fetchAndActivate();
  //
  // FirebaseAnalytics.instance
  //     .setAnalyticsCollectionEnabled(isAnalyticsCollectEnabled);
// }