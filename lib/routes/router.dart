// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:snowrun/presentation/app-notice/app_notice_page.dart';
import 'package:snowrun/presentation/history/history_page.dart';
import 'package:snowrun/presentation/home/home_page.dart';
import 'package:snowrun/presentation/navigate/navigate_page.dart';
import 'package:snowrun/presentation/record/record_page.dart';
import 'package:snowrun/presentation/setting/setting_page.dart';
import 'package:snowrun/presentation/splash/splash_page.dart';

// Project imports:

@CustomAutoRouter(
  // generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
      path: '/splash',
    ),
    // CustomRoute(
    //   page: SelectStorePage,
    //   path: '/select-store',
    //   // fullscreenDialog: true,
    //   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    // ),
    // CustomRoute(
    //   page: QRScannerPage,
    //   path: '/qr-scanner',
    //   // fullscreenDialog: true,
    //   transitionsBuilder: TransitionsBuilders.noTransition,
    // ),
    CustomRoute(
      page: NavigatePage,
      path: '/home',
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      page: HomePage,
      path: '/home',
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      page: AppNoticePage,
      path: '/notice',
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: HistoryPage,
      path: '/history',
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      page: SettingPage,
      path: '/setting',
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      page: RecordPage,
      path: '/record',
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    // CustomRoute(
    //   page: MallManagementPage,
    //   path: '/mall-management',
    //   // fullscreenDialog: true,
    //   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    // ),
    // CustomRoute(
    //   page: ExportOrderPage,
    //   path: '/export-order',
    //   // fullscreenDialog: true,
    //   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    // ),
    // CustomRoute(
    //   page: MyPage,
    //   path: '/mypage',
    //   // fullscreenDialog: true,
    //   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    // ),
    // CustomRoute(
    //   page: TakeOrderPage,
    //   path: '/take-order',
    //   // fullscreenDialog: true,
    //   transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    // ),

    /*
    Service
     */
    // CustomRoute(
    //   page: CategoryRatioPage,
    //   fullscreenDialog: true,
    //   durationInMilliseconds: 700,
    //   reverseDurationInMilliseconds: 200,
    // ),
  ],
)
class $AppRouter {}