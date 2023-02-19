// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Package imports:
import 'package:snowrun/injection.dart';
import 'package:snowrun/routes/router.gr.dart';
import 'package:snowrun/utils/record_service.dart';
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
  await getIt<RecordService>().initializeService();

  //hive
  await Hive.initFlutter();


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