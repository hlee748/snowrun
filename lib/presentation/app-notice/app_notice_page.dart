// Flutter imports:
import 'dart:io';

// import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snowrun/domain/app-info/model/app_notice.dart';
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:

class AppNoticePage extends StatefulWidget {
  const AppNoticePage({super.key, required this.appNotice});

  final AppNotice appNotice;

  @override
  AppNoticeState createState() => AppNoticeState();
}

class AppNoticeState extends State<AppNoticePage> {
  // final AppInfoBloc _appInfoBloc = getIt<AppInfoBloc>();
  final appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appNotice = widget.appNotice;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                "App Info",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24,),
              // ExtendedImage.network(appNotice.imageUrl.getOrCrash(), cache: false,),
              Text(appNotice.title.getOrCrash()),
              Text(appNotice.description.getOrCrash()),
              Text("${appNotice.isForcedFinish.getOrCrash()}"),
              Text(
                  "${appNotice.negativeButton.getOrCrash()?.title.getOrCrash()}"),
              Text(
                  "${appNotice.negativeButton.getOrCrash()?.deeplink.getOrCrash()}"),
              Text(
                  "${appNotice.positiveButton.getOrCrash()?.title.getOrCrash()}"),
              Text(
                  "${appNotice.positiveButton.getOrCrash()?.deeplink.getOrCrash()}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      _clickButton(
                          isForcedFinish: appNotice.isForcedFinish.getOrCrash(),
                          deeplink: appNotice.negativeButton
                              .getOrCrash()
                              ?.deeplink
                              .getOrCrash());
                    },
                    child: Text(
                        "${appNotice.negativeButton.getOrCrash()?.title.getOrCrash()}"),
                  ),

                  TextButton(
                    onPressed: () {
                      _clickButton(
                          isForcedFinish: appNotice.isForcedFinish.getOrCrash(),
                          deeplink: appNotice.positiveButton
                              .getOrCrash()
                              ?.deeplink
                              .getOrCrash());
                    },
                    child: Text(
                        "${appNotice.positiveButton.getOrCrash()?.title.getOrCrash()}"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    // return MultiBlocProvider(
    //   providers: const [
    //     // BlocProvider<AppInfoBloc>(
    //     //   create: (context) =>
    //     //   _appInfoBloc..add(const AppInfoEvent.getAppInfo()),
    //     // ),
    //   ],
    //   child: BlocBuilder<AppInfoBloc, AppInfoState>(
    //       builder: (context, appInfoState) {
    //         return WillPopScope(
    //           onWillPop: () {
    //             // onlySearchMode 일 경우 바로 페이지 종료
    //             // if (widget.mode == SearchPageMode.onlySearch) return Future.value(true);
    //             //
    //             // // onlySearchMode 일 경우 바로 페이지 종료
    //             // if (isSearching == true) {
    //             //   cancelSearch();
    //             //   return Future.value(false);
    //             // }
    //             // return Future.value(true);
    //             return Future.value(false);
    //           },
    //           child: Scaffold(
    //             body: SafeArea(
    //               child: Column(
    //                 children: [
    //                   Text("${appNo}"),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         );
    //       }),
    // );
  }

  _clickButton({bool? isForcedFinish = false, String? deeplink}) {
    if (isForcedFinish == true) {
      if (Platform.isAndroid) {
        SystemNavigator.pop();
      } else if (Platform.isIOS) {
        exit(0);
      }
    } else {
      //TODO : 딥링크 처리
    }
  }
}
