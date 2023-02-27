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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../domain/app-info/model/app_notice.dart' as _i11;
import '../presentation/app-notice/app_notice_page.dart' as _i4;
import '../presentation/history/history_page.dart' as _i5;
import '../presentation/home/home_page.dart' as _i3;
import '../presentation/landing/landing_page.dart' as _i1;
import '../presentation/navigate/navigate_page.dart' as _i2;
import '../presentation/record/record_page.dart' as _i8;
import '../presentation/setting/setting_page.dart' as _i6;
import '../presentation/setting/version_page.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LandingPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigatePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigatePage(),
        transitionsBuilder: _i9.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
        transitionsBuilder: _i9.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppNoticePageRoute.name: (routeData) {
      final args = routeData.argsAs<AppNoticePageRouteArgs>();
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.AppNoticePage(
          key: args.key,
          appNotice: args.appNotice,
        ),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HistoryPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.HistoryPage(),
        transitionsBuilder: _i9.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingPage(),
        transitionsBuilder: _i9.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    VersionPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.VersionPage(),
        transitionsBuilder: _i9.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RecordPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.RecordPage(),
        transitionsBuilder: _i9.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/landing',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          LandingPageRoute.name,
          path: '/landing',
        ),
        _i9.RouteConfig(
          NavigatePageRoute.name,
          path: '/home',
        ),
        _i9.RouteConfig(
          HomePageRoute.name,
          path: '/home',
        ),
        _i9.RouteConfig(
          AppNoticePageRoute.name,
          path: '/notice',
        ),
        _i9.RouteConfig(
          HistoryPageRoute.name,
          path: '/history',
        ),
        _i9.RouteConfig(
          SettingPageRoute.name,
          path: '/setting',
        ),
        _i9.RouteConfig(
          VersionPageRoute.name,
          path: '/version',
        ),
        _i9.RouteConfig(
          RecordPageRoute.name,
          path: '/record',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingPageRoute extends _i9.PageRouteInfo<void> {
  const LandingPageRoute()
      : super(
          LandingPageRoute.name,
          path: '/landing',
        );

  static const String name = 'LandingPageRoute';
}

/// generated route for
/// [_i2.NavigatePage]
class NavigatePageRoute extends _i9.PageRouteInfo<void> {
  const NavigatePageRoute()
      : super(
          NavigatePageRoute.name,
          path: '/home',
        );

  static const String name = 'NavigatePageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.AppNoticePage]
class AppNoticePageRoute extends _i9.PageRouteInfo<AppNoticePageRouteArgs> {
  AppNoticePageRoute({
    _i10.Key? key,
    required _i11.AppNotice appNotice,
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

  final _i10.Key? key;

  final _i11.AppNotice appNotice;

  @override
  String toString() {
    return 'AppNoticePageRouteArgs{key: $key, appNotice: $appNotice}';
  }
}

/// generated route for
/// [_i5.HistoryPage]
class HistoryPageRoute extends _i9.PageRouteInfo<void> {
  const HistoryPageRoute()
      : super(
          HistoryPageRoute.name,
          path: '/history',
        );

  static const String name = 'HistoryPageRoute';
}

/// generated route for
/// [_i6.SettingPage]
class SettingPageRoute extends _i9.PageRouteInfo<void> {
  const SettingPageRoute()
      : super(
          SettingPageRoute.name,
          path: '/setting',
        );

  static const String name = 'SettingPageRoute';
}

/// generated route for
/// [_i7.VersionPage]
class VersionPageRoute extends _i9.PageRouteInfo<void> {
  const VersionPageRoute()
      : super(
          VersionPageRoute.name,
          path: '/version',
        );

  static const String name = 'VersionPageRoute';
}

/// generated route for
/// [_i8.RecordPage]
class RecordPageRoute extends _i9.PageRouteInfo<void> {
  const RecordPageRoute()
      : super(
          RecordPageRoute.name,
          path: '/record',
        );

  static const String name = 'RecordPageRoute';
}
