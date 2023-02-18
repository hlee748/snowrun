// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/app_config/app_config_bloc.dart';

// Package imports:
import 'package:snowrun/injection.dart';
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
  final appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
    // getIt<AnonymousBloc>.get
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
      ],
      child: BlocBuilder<AppConfigBloc, AppConfigState>(
        builder: (context, state){
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
                          appRouter.push(const NavigatePageRoute());
                        },
                        child: const Text("Home 가기", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                  ),
                ),
              ),
          );
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
