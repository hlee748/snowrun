// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/app-info/app_info_bloc.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/presentation/navigate/i_navigate_tab_page.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:
import 'package:snowrun/presentation/core/list_item.dart';

class SettingPage extends StatefulWidget implements INavigateTabPage {
  const SettingPage({
    super.key,
  });

  @override
  SettingState createState() => SettingState();

  @override
  void onSelectedPage() {
    // TODO: implement onSelectedPage
  }
}

class SettingState extends State<SettingPage> {
  // final AnonymousBloc _anonymousBloc = getIt<AnonymousBloc>();
  final appRouter = getIt<AppRouter>();
  final _appInfoBloc = getIt<AppInfoBloc>();

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
        BlocProvider<AppInfoBloc>(
            create: (context) =>
                _appInfoBloc..add(const AppInfoEvent.getAppInfo()))
      ],
      child: BlocBuilder<AppInfoBloc, AppInfoState>(
        builder: (context, appInfoState) {
          print("WTF :: HOHO  :: ${appInfoState.appVersion.latest.getOrCrash()}");
          print("WTF :: HOHO  :: ${appInfoState.appOperationInfos.length}");

          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.blue,
                    child: CustomScrollView(
                      slivers: [
                        const SliverAppBar(
                            automaticallyImplyLeading: false,
                            backgroundColor: Colors.white,
                            title: Center(
                              child: Text(
                                "설정",
                                style: TextStyle(
                                    fontSize: 48, color: Colors.black),
                              ),
                            )),
                        SliverList(
                            delegate: SliverChildBuilderDelegate(
                                childCount: appInfoState.appOperationInfos
                                    .length, (BuildContext context, int index) {
                          final appOperationInfo =
                              appInfoState.appOperationInfos[index];
                          return ListItem(
                            title: appOperationInfo.title.getOrCrash(),
                            onTap: () {
                              debugPrint(
                                  appOperationInfo.link.getOrCrash());
                            },
                            isVisibleArrow: true,
                          );
                        })),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
