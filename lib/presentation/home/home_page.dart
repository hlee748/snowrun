// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
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

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.yellow,
          )
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: IconButton(
          //     onPressed: () {
          //       appRouter.push(const RecordPageRoute());
          //     },
          //     icon: Image.asset(
          //       'assets/pngs/record.png',
          //       scale: 50.0,
          //     ),
          //   ),
          // ),
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        onPressed: () {
          appRouter.push(const RecordPageRoute());
        },
        child: Image.asset(
          'assets/pngs/record.png',
        ),
      ),
    );
  }
}
