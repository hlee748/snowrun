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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../presentation/history/history_page.dart' as _i4;
import '../presentation/home/home_page.dart' as _i3;
import '../presentation/navigate/navigate_page.dart' as _i2;
import '../presentation/record/record_page.dart' as _i6;
import '../presentation/setting/setting_page.dart' as _i5;
import '../presentation/splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigatePageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigatePage(),
        transitionsBuilder: _i7.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomePageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
        transitionsBuilder: _i7.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HistoryPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.HistoryPage(),
        transitionsBuilder: _i7.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingPage(),
        transitionsBuilder: _i7.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RecordPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.RecordPage(),
        transitionsBuilder: _i7.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          SplashPageRoute.name,
          path: '/splash',
        ),
        _i7.RouteConfig(
          NavigatePageRoute.name,
          path: '/home',
        ),
        _i7.RouteConfig(
          HomePageRoute.name,
          path: '/home',
        ),
        _i7.RouteConfig(
          HistoryPageRoute.name,
          path: '/history',
        ),
        _i7.RouteConfig(
          SettingPageRoute.name,
          path: '/setting',
        ),
        _i7.RouteConfig(
          RecordPageRoute.name,
          path: '/record',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.NavigatePage]
class NavigatePageRoute extends _i7.PageRouteInfo<void> {
  const NavigatePageRoute()
      : super(
          NavigatePageRoute.name,
          path: '/home',
        );

  static const String name = 'NavigatePageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.HistoryPage]
class HistoryPageRoute extends _i7.PageRouteInfo<void> {
  const HistoryPageRoute()
      : super(
          HistoryPageRoute.name,
          path: '/history',
        );

  static const String name = 'HistoryPageRoute';
}

/// generated route for
/// [_i5.SettingPage]
class SettingPageRoute extends _i7.PageRouteInfo<void> {
  const SettingPageRoute()
      : super(
          SettingPageRoute.name,
          path: '/setting',
        );

  static const String name = 'SettingPageRoute';
}

/// generated route for
/// [_i6.RecordPage]
class RecordPageRoute extends _i7.PageRouteInfo<void> {
  const RecordPageRoute()
      : super(
          RecordPageRoute.name,
          path: '/record',
        );

  static const String name = 'RecordPageRoute';
}
