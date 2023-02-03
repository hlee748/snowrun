// Flutter imports:
import 'package:flutter/material.dart';

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
          child: Container(
            color: Colors.deepOrangeAccent,
            child: Center(
              child: TextButton(
                onPressed: () {
                   appRouter.push(const HomePageRoute());
                },
                child: const Text("Home 가기"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
