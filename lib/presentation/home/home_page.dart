// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:snowrun/injection.dart';
import 'package:snowrun/presentation/navigate/i_navigate_tab_page.dart';
import 'package:snowrun/routes/router.gr.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:

class HomePage extends StatefulWidget implements INavigateTabPage{
  const HomePage({
    super.key,
  });

  @override
  HomeState createState() => HomeState();

  @override
  void onSelectedPage() {
    // TODO: implement onSelectedPage
  }
}

class HomeState extends State<HomePage> {
  // final AnonymousBloc _anonymousBloc = getIt<AnonymousBloc>();
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

    return WillPopScope(
      onWillPop: () {
        // onlySearchMode 일 경우 바로 페이지 종료
        // if (widget.mode == SearchPageMode.onlySearch) return Future.value(true);
        //
        // // onlySearchMode 일 경우 바로 페이지 종료
        // if (isSearching == true) {
        //   cancelSearch();
        //   return Future.value(false);
        // }
        // return Future.value(true);
        return Future.value(false);
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    // appRouter.push(const SelectStorePageRoute());
                  },
                  child: const Text("HomePage"),
                ),
              ),
              Positioned(
                  bottom: 12,
                  right: 12,
                  child: IconButton(
                    onPressed: () {
                      appRouter.push(const RecordPageRoute());
                    },
                    icon: SvgPicture.asset(
                      'assets/svgs/ski.svg',
                    ),
                  )
              ),
            ]
          ),
        ),
      ),
    );
  }
}
