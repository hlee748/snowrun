// Flutter imports:
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:snowrun/injection.dart';
import 'package:snowrun/routes/router.gr.dart';
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