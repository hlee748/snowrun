// Flutter imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/auth/o_auth_bloc.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/presentation/navigate/i_navigate_tab_page.dart';
import 'package:snowrun/routes/router.gr.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Project imports:

class HomePage extends StatefulWidget implements INavigateTabPage {
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
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final oAuthBloc = getIt<OAuthBloc>();

  final CollectionReference _todays =
      FirebaseFirestore.instance.collection("Today");

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
          BlocProvider(
              create: (context) =>
                  oAuthBloc..add(const OAuthEvent.getAnonymousToken())),
        ],
        child: BlocBuilder<OAuthBloc, OAuthState>(
          builder: (context, oAuthState) {
            return Scaffold(
              body: Stack(children: [
                Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            print("firestore 읽기 버튼 눌림");
                            // String date = "Today";
                            firebaseFirestore
                                .collection("firestoreTest")
                                .doc("5leirGKJrAmWBUEaGCxB")
                                .get()
                                .then((DocumentSnapshot ds) {
                              Timestamp t = ds['Today'] as Timestamp;
                              DateTime date = t.toDate();
                              print("HOHOHO ::: FirestoreRead ::: ${date}");
                            });
                          },
                          child: const Text(
                            "Firestore 데이터 읽기!",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ),
                        TextButton(
                          onPressed: () async {
                            final token = await FirebaseAuth.instance.currentUser?.getIdToken();
                            print("firestore 쓰기 버튼 눌림 => 토큰 -> $token");
                            // String date = "Today";
                            // firebaseFirestore
                            //     .collection("firestoreTest")
                            //     .doc("5leirGKJrAmWBUEaGCxB")
                            //     .set({'Today': DateTime.now()})
                            //     .then((value) => print("add Today date"))
                            //     .catchError((error) =>
                            //         print("Failed to add date: $error"));
                            // firebaseFirestore
                            //     .collection("firestoreTest")
                            //     // .doc("${token}")
                            //     .doc("현주가탔어요")
                            //     .update({'${DateTime.now()}': "좌표좌표"})
                            //     // .set({'Today': DateTime.now()})
                            //     .then((value) => print("add Today date"))
                            //     .catchError((error) =>
                            //     print("Failed to add date: $error"));
                          },
                          child: const Text(
                            "Firestore에 데이터 추가!",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
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
          },
        ));
  }

// sendTodayDate({today}) async{
//   Today today = Today(today: DateTime.now());
// }
}

// class Today {
//   final DateTime today;
//
//   Today({required this.today});
// }
