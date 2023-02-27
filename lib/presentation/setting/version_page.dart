// Flutter imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/app-info/app_info_bloc.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:

class VersionPage extends StatefulWidget{
  const VersionPage({
    super.key,
  });

  @override
  VersionState createState() => VersionState();

  @override
  void onSelectedPage() {
    // TODO: implement onSelectedPage
  }
}

class VersionState extends State<VersionPage> {
  final appRouter = getIt<AppRouter>();
  final _appInfoBloc = getIt<AppInfoBloc>();

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
    return MultiBlocProvider(
        providers: [
          BlocProvider<AppInfoBloc>(
              create: (context) => _appInfoBloc..add(const AppInfoEvent.getAppInfo()),
          ),
        ],
        child: BlocBuilder<AppInfoBloc, AppInfoState>(
          builder: (context, appInfoState){
            return Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              context.popRoute();
                            },
                            padding: const EdgeInsets.all(18),
                            icon: const Icon(Icons.arrow_back_ios, size: 40,)),
                        const Text("버전정보", style: TextStyle(fontSize: 48),),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/pngs/snowrun_logo.png",
                                scale: 5),
                            Text("Snowrun"),
                            Text("Version ${getIt<AppInfoBloc>().state.appVersion.current?.getOrCrash()}"),
                            Text("현재 최신 버전 입니다."),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}
