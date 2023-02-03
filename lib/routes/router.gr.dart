// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../presentation/history/history_page.dart' as _i3;
import '../presentation/home/home_page.dart' as _i2;
import '../presentation/record/record_page.dart' as _i5;
import '../presentation/setting/setting_page.dart' as _i4;
import '../presentation/splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomePageRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HistoryPageRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryPage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingPageRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.SettingPage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RecordPageRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.RecordPage(),
        transitionsBuilder: _i6.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          SplashPageRoute.name,
          path: '/splash',
        ),
        _i6.RouteConfig(
          HomePageRoute.name,
          path: '/home',
        ),
        _i6.RouteConfig(
          HistoryPageRoute.name,
          path: '/history',
        ),
        _i6.RouteConfig(
          SettingPageRoute.name,
          path: '/setting',
        ),
        _i6.RouteConfig(
          RecordPageRoute.name,
          path: '/record',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.HistoryPage]
class HistoryPageRoute extends _i6.PageRouteInfo<void> {
  const HistoryPageRoute()
      : super(
          HistoryPageRoute.name,
          path: '/history',
        );

  static const String name = 'HistoryPageRoute';
}

/// generated route for
/// [_i4.SettingPage]
class SettingPageRoute extends _i6.PageRouteInfo<void> {
  const SettingPageRoute()
      : super(
          SettingPageRoute.name,
          path: '/setting',
        );

  static const String name = 'SettingPageRoute';
}

/// generated route for
/// [_i5.RecordPage]
class RecordPageRoute extends _i6.PageRouteInfo<void> {
  const RecordPageRoute()
      : super(
          RecordPageRoute.name,
          path: '/record',
        );

  static const String name = 'RecordPageRoute';
}
