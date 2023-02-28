// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:snowrun/injection/injection.dart';
import 'package:snowrun/presentation/navigate/i_navigate_tab_page.dart';
import 'package:snowrun/routes/router.gr.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

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
            child: Center(
              child: TextButton(
                onPressed: () {
                  print("firestore 버튼 눌림");
                  String date = "Today";
                  firebaseFirestore.collection("firestoreTest").doc("5leirGKJrAmWBUEaGCxB").get().then((value) => null);
                },
                child: Text("Firestore로 보내기!",
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),
                ),),
            ),
          )
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
