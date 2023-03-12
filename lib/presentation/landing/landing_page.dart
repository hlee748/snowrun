// Flutter imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snowrun/application/app-info/app_info_bloc.dart';
import 'package:snowrun/application/landing/landing_bloc.dart';
import 'package:snowrun/domain/app-info/model/app_notice.dart';
import 'package:snowrun/domain/app-info/model/app_notice_button_info.dart';
import 'package:snowrun/domain/app-info/model/app_version.dart';
import 'package:snowrun/domain/core/value_objects.dart';
import 'package:snowrun/infrastructure/hive/hive_provider.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<LandingPage> with TickerProviderStateMixin{
  final _landingBloc = getIt<LandingBloc>();
  final _appRouter = getIt<AppRouter>();
  final _appInfoBloc = getIt<AppInfoBloc>();

  late AnimationController _controller;
  late Animation<double> _animation;

  final Tween<double> turnsTween = Tween<double>(
    begin: 0,
    end: 1,
  );

  late final AnimationController _scaleupController = AnimationController(
    duration: const Duration(milliseconds: 800),
    vsync: this,
  );
  late final Animation<double> _scaleupAnimation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

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

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 10)
    );
    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn
    );
    _controller.repeat();

    _appInfoBloc.onShowAppNoticePage = (AppNotice appNotice) {
      _appRouter.push(AppNoticePageRoute(appNotice: appNotice));
    };
  }

  @override
  void dispose() {
    _controller.dispose();
    _scaleupController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LandingBloc>(
              create: (context) =>
                  _landingBloc..add(const LandingEvent.getLanding())),
          BlocProvider<AppInfoBloc>(
            create: (context) =>
                _appInfoBloc..add(const AppInfoEvent.getAppInfo()),
          ),
        ],
        child: BlocBuilder<LandingBloc, LandingState>(
          builder: (context, landingState) {
            print("HOHOHO ::: landing view ::: ${getIt<LandingBloc>().state}");
            return BlocBuilder<AppInfoBloc, AppInfoState>(
                builder: (context, appInfoState) {
                  Future.delayed(const Duration(milliseconds:  1000), () {
                    context.router.replace(const NavigatePageRoute());
                  });
              return Scaffold(
                backgroundColor: Color(0xff000000),
                body: Visibility(
                  visible: true,
                  // visible: getIt<LandingBloc>().state.title.isNotEmpty ? true : false,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: 1,
                    // opacity: getIt<LandingBloc>().state.title.isNotEmpty ? 1 : 0,
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        const SizedBox(height: 48),
                        Transform.scale(
                          scale: 0.8,
                          child: RotationTransition(
                            turns: turnsTween.animate(_controller),
                            child:
                            Image.asset(getIt<LandingBloc>().state.imageUrl,
                            ),
                          ),
                        ),
                        // TextButton(
                        //   onPressed: () {
                        //     _appRouter.push(const NavigatePageRoute());
                        //   },
                        //   child: const Text(
                        //     "Home 가기",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 24,
                        //     ),
                        //   ),
                        // ),
                        // Center(
                        //   child: Column(
                        //     children: [
                        //       const Text(
                        //         "App Version",
                        //         style: TextStyle(
                        //             fontSize: 16,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.white),
                        //       ),
                        //       const SizedBox(height: 4,),
                        //       Text(
                        //         "현재버전 : ${getIt<AppInfoBloc>().state.appVersion.current?.getOrCrash()}",
                        //         style: const TextStyle(
                        //             fontSize: 12, color: Colors.white),
                        //       ),
                        //       Text(
                        //         "최소버전 : ${getIt<AppInfoBloc>().state.appVersion.min.getOrCrash()}",
                        //         style: const TextStyle(
                        //             fontSize: 12, color: Colors.white),
                        //       ),
                        //       Text(
                        //         "최신버전 : ${getIt<AppInfoBloc>().state.appVersion.latest.getOrCrash()}",
                        //         style: const TextStyle(
                        //             fontSize: 12, color: Colors.white),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ]),
                    ),
                  ),
                ),
              );
            });
          },
        ));
  }
}
