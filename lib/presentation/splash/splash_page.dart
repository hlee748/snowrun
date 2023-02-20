// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/app-info/app_info_bloc.dart';
import 'package:snowrun/application/app_config/app_config_bloc.dart';
import 'package:snowrun/domain/app-info/model/app_notice.dart';
import 'package:snowrun/domain/app-info/model/app_notice_button_info.dart';
import 'package:snowrun/domain/app-info/model/app_version.dart';
import 'package:snowrun/domain/core/value_objects.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashPage> {
  // final AnonymousBloc _anonymousBloc = getIt<AnonymousBloc>();
  final AppConfigBloc _appConfigBloc = getIt<AppConfigBloc>();
  final _appRouter = getIt<AppRouter>();
  final _appInfoBloc = getIt<AppInfoBloc>();

  @override
  void initState() {
    super.initState();
    _appInfoBloc.onShowRecommendUpdateVersionPage = (AppVersion appVersion) {
      _appRouter.push(AppNoticePageRoute(
          appNotice: AppNotice(
              title: StringVO("앱버전 문제있어"),
              description: StringVO("이런 문제들이있어"),
              isForcedFinish: BooleanVO(true),
              imageUrl: StringVO(null),
              negativeButton: AppNoticeButtonInfoVO(
                AppNoticeButtonInfo(
                    title: StringVO("버튼버튼1"), deeplink: StringVO("딥링크딥링크")),
              ),
              positiveButton: AppNoticeButtonInfoVO(AppNoticeButtonInfo(
                  title: StringVO("버튼버튼2"), deeplink: StringVO("딥링크딥링크"))))));
    };

    _appInfoBloc.onShowAppNoticePage = (AppNotice appNotice) {
      _appRouter.push(AppNoticePageRoute(appNotice: appNotice));
    };
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppConfigBloc>(
            create: (context) =>
            _appConfigBloc
               ..add(const AppConfigEvent.getSplash())
        ),
        BlocProvider<AppInfoBloc>(
          create: (context) =>
          _appInfoBloc..add(const AppInfoEvent.getAppInfo()),
        ),
      ],
      child: BlocBuilder<AppConfigBloc, AppConfigState>(
        builder: (context, state){
          return BlocBuilder<AppInfoBloc, AppInfoState>(
              builder: (context, appInfoState){
                final splashUrl = state.splashUrl;
                return SafeArea(
                  child:
                  Visibility(
                    visible: splashUrl.isNotEmpty ? true : false,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 1600),
                      opacity: splashUrl.isNotEmpty ? 1 : 0,
                      child: Stack(
                          children: [
                            Image.asset(
                                state.splashUrl
                            ),
                            TextButton(
                              onPressed: () {
                                _appRouter.push(const NavigatePageRoute());
                              },
                              child: const Text("Home 가기", style: TextStyle(color: Colors.white),),
                            ),
                            Column(
                              children: [
                                const Text(
                                  "앱버전",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "현재버전 -> ${getIt<AppInfoBloc>().state.appVersion.current?.getOrCrash()}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "최소버전 -> ${getIt<AppInfoBloc>().state.appVersion.min.getOrCrash()}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "최신버전 -> ${getIt<AppInfoBloc>().state.appVersion.latest.getOrCrash()}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                );
              });
        },
      )
    );
    // return WillPopScope(
    //   onWillPop: () {
    //     // onlySearchMode 일 경우 바로 페이지 종료
    //     // if (widget.mode == SearchPageMode.onlySearch) return Future.value(true);
    //     //
    //     // // onlySearchMode 일 경우 바로 페이지 종료
    //     // if (isSearching == true) {
    //     //   cancelSearch();
    //     //   return Future.value(false);
    //     // }
    //     // return Future.value(true);
    //     return Future.value(false);
    //   },
    //   child: Scaffold(
    //     body: SafeArea(
    //       child: Container(
    //         color: Colors.deepOrangeAccent,
    //         child: Center(
    //           child: TextButton(
    //             onPressed: () {
    //                appRouter.push(const NavigatePageRoute());
    //             },
    //             child: const Text("Home 가기"),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
