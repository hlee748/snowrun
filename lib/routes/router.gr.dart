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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../domain/app-info/model/app_notice.dart' as _i10;
import '../presentation/app-notice/app_notice_page.dart' as _i4;
import '../presentation/history/history_page.dart' as _i5;
import '../presentation/home/home_page.dart' as _i3;
import '../presentation/navigate/navigate_page.dart' as _i2;
import '../presentation/record/record_page.dart' as _i7;
import '../presentation/setting/setting_page.dart' as _i6;
import '../presentation/splash/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigatePageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigatePage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomePageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppNoticePageRoute.name: (routeData) {
      final args = routeData.argsAs<AppNoticePageRouteArgs>();
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.AppNoticePage(
          key: args.key,
          appNotice: args.appNotice,
        ),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HistoryPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.HistoryPage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingPage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RecordPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.RecordPage(),
        transitionsBuilder: _i8.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          SplashPageRoute.name,
          path: '/splash',
        ),
        _i8.RouteConfig(
          NavigatePageRoute.name,
          path: '/home',
        ),
        _i8.RouteConfig(
          HomePageRoute.name,
          path: '/home',
        ),
        _i8.RouteConfig(
          AppNoticePageRoute.name,
          path: '/notice',
        ),
        _i8.RouteConfig(
          HistoryPageRoute.name,
          path: '/history',
        ),
        _i8.RouteConfig(
          SettingPageRoute.name,
          path: '/setting',
        ),
        _i8.RouteConfig(
          RecordPageRoute.name,
          path: '/record',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i8.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.NavigatePage]
class NavigatePageRoute extends _i8.PageRouteInfo<void> {
  const NavigatePageRoute()
      : super(
          NavigatePageRoute.name,
          path: '/home',
        );

  static const String name = 'NavigatePageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.AppNoticePage]
class AppNoticePageRoute extends _i8.PageRouteInfo<AppNoticePageRouteArgs> {
  AppNoticePageRoute({
    _i9.Key? key,
    required _i10.AppNotice appNotice,
  }) : super(
          AppNoticePageRoute.name,
          path: '/notice',
          args: AppNoticePageRouteArgs(
            key: key,
            appNotice: appNotice,
          ),
        );

  static const String name = 'AppNoticePageRoute';
}

class AppNoticePageRouteArgs {
  const AppNoticePageRouteArgs({
    this.key,
    required this.appNotice,
  });

  final _i9.Key? key;

  final _i10.AppNotice appNotice;

  @override
  String toString() {
    return 'AppNoticePageRouteArgs{key: $key, appNotice: $appNotice}';
  }
}

/// generated route for
/// [_i5.HistoryPage]
class HistoryPageRoute extends _i8.PageRouteInfo<void> {
  const HistoryPageRoute()
      : super(
          HistoryPageRoute.name,
          path: '/history',
        );

  static const String name = 'HistoryPageRoute';
}

/// generated route for
/// [_i6.SettingPage]
class SettingPageRoute extends _i8.PageRouteInfo<void> {
  const SettingPageRoute()
      : super(
          SettingPageRoute.name,
          path: '/setting',
        );

  static const String name = 'SettingPageRoute';
}

/// generated route for
/// [_i7.RecordPage]
class RecordPageRoute extends _i8.PageRouteInfo<void> {
  const RecordPageRoute()
      : super(
          RecordPageRoute.name,
          path: '/record',
        );

  static const String name = 'RecordPageRoute';
}
