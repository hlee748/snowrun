import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:snowrun/app_widget.dart';
import 'package:snowrun/initializer.dart';

void main() async {
  // await dotenv.load(fileName: "assets/.env.dev");
  // await initServices(
  //   isAnalyticsCollectEnabled: true,
  //   isCrashlyticsCollectionEnabled: true,
  // );
  //
  // runZonedGuarded<Future<void>>(
  //       () async {
  //     runApp(const MainApp());
  //   },
  //       (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack),
  // );
  await initServices();
  // await Firebase.initializeApp();
  runApp(const MainApp());

  // runZonedGuarded<Future<void>>(
  //       () async {
  //     runApp(const MainApp());
  //   },
  //       (error, stack) =>
  //       FirebaseCrashlytics.instance.recordError(error, stack),
  // );

}