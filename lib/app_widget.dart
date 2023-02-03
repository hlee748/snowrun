// Flutter imports:
import 'package:auto_route/auto_route.dart';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/app_theme.dart';
import 'package:snowrun/injection.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // static final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  // static final dynamicLinks = FirebaseDynamicLinks.instance;

  // @override
  // void initState() {
  //   super.initState();
  //   // setupInteractedMessage();
  //   // handleDynamicLinks();
  // }

  // Future<void> handleDynamicLinks() async {
  //   /**
  //    * Deep Link Terminated State (SET)
  //    * 주의: FirebaseDynamicLinks.instance.onLink.listen 전에 꼭 실행되어야 한다.
  //    * 아닐경우 onLink 에서도 호출이됨
  //    */
  //   final initialLink = await dynamicLinks.getInitialLink();
  //   if (initialLink != null) {
  //     getIt<DynamicLinkManager>().set(initialLink);
  //   }
  //
  //   dynamicLinks.onLink.listen((dynamicLinkData) {
  //     /**
  //      * Background / Foreground State
  //      */
  //     debugPrint('dynamicLinks.onLink');
  //     DynamicLinkManager.handleDynamicLinkData(dynamicLinkData);
  //   }).onError((error) {
  //     // Handle errors
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(context),
      routeInformationParser: appRouter.defaultRouteParser(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: child!,
      ),
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [
          AutoRouteObserver(),
          // FirebaseAnalyticsObserver(analytics: analytics),
        ],
      ),
    );
  }
}