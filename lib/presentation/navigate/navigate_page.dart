// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:snowrun/injection.dart';
import 'package:snowrun/presentation/history/history_page.dart';
import 'package:snowrun/presentation/home/home_page.dart';
import 'package:snowrun/presentation/navigate/i_navigate_tab_page.dart';
import 'package:snowrun/presentation/setting/setting_page.dart';
import 'package:snowrun/routes/router.gr.dart';

// Package imports:

// Project imports:

class NavigatePage extends StatefulWidget {
  const NavigatePage({
    super.key,
  });

  @override
  NavigateState createState() => NavigateState();
}

class NavigateState extends State<NavigatePage> {
  final appRouter = getIt<AppRouter>();
  final BottomNavigationBloc _bottomNavigationBloc =
  getIt<BottomNavigationBloc>();
  late final List<Widget> _childrenPages;
  late PageController _pageController;

  void _onItemTapped(int index) {
    if (_bottomNavigationBloc.state.currentPosition == index) return;
    _bottomNavigationBloc.add(BottomNavigationEvent.changePosition(index));
    final currentHomeTabPage = _childrenPages[index] as INavigateTabPage;
    currentHomeTabPage.onSelectedPage();
    _pageController.jumpToPage(index);
  }

  @override
  void initState() {
    super.initState();
    _childrenPages = [
      const HomePage(),
      const HistoryPage(),
      const SettingPage()
    ];

    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
        // return showWarningDialog(
        //     description: '', context: context, title: '앱을 종료하시겠어요?')
        //     .then((value) {
        //   return Future.value(value);
        // });
      },
      child: BlocProvider(
        create: (context) => _bottomNavigationBloc
          ..add(const BottomNavigationEvent.changePosition(0)),
        child: BlocListener<BottomNavigationBloc, BottomNavigationState>(
          listener: (context, state) {
            _onItemTapped(state.currentPosition);
          },
          child: Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: Center(
                    child: PageView(
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: _childrenPages,
                    ),
                  ),
                ),
                bottomNavigationBar,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get bottomNavigationBar => DecoratedBox(
    decoration: const BoxDecoration(
      // borderRadius: BorderRadius.only(
      //     topRight: Radius.circular(24), topLeft: Radius.circular(24)),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 1),
      ],
    ),
    child: ClipRRect(
      // borderRadius: const BorderRadius.only(
      //     topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentPosition,
            selectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black45,
            onTap: (index) {
              _onItemTapped(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: 'History',
                icon: Icon(
                  Icons.history,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Setting',
                icon: Icon(Icons.settings),
              ),
            ],
          );
        },
      ),
    ),
  );
}
