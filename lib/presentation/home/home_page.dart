// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:snowrun/injection.dart';
import 'package:snowrun/presentation/history/history_page.dart';
import 'package:snowrun/presentation/home/i_home_tab_page.dart';
import 'package:snowrun/presentation/record/record_page.dart';
import 'package:snowrun/presentation/setting/setting_page.dart';
import 'package:snowrun/routes/router.gr.dart';

// Project imports:

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  final appRouter = getIt<AppRouter>();
  late final List<Widget> _childrenPages;
  late PageController _pageController;

  int _selectedIndex = 0;
  bool isFinishInitialize = false;

  void _onItemTapped(int index) {
    if (!isFinishInitialize) return;
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
    final currentHomeTabPage = _childrenPages[index] as IHomeTabPage;
    currentHomeTabPage.onSelectedPage();
    _pageController.jumpToPage(index);
  }

  @override
  void initState() {
    super.initState();
    _childrenPages = [
      const HistoryPage(),
      const RecordPage(),
      const SettingPage(),
    ];

    _pageController = PageController(initialPage: _selectedIndex);

    if (mounted) {
      setState(() {
        isFinishInitialize = true;
      });
    }
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
        create: (context) => getIt<BottomNavigationBloc>()
          ..add(BottomNavigationEvent.changePosition(_selectedIndex)),
        child: BlocListener<BottomNavigationBloc, BottomNavigationState>(
          listener: (context, state) {
            if (state.currentPosition != _selectedIndex) {
              _onItemTapped(state.currentPosition);
            }
          },
          child: Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: Center(
                    child: isFinishInitialize
                        ? PageView(
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: _childrenPages,
                    )
                        : const SizedBox(),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: bottomNavigationBar,
                )
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
            currentIndex: _selectedIndex,
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
