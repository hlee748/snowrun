// Flutter imports:
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun/application/record/record_bloc.dart';

// Package imports:
import 'package:snowrun/injection.dart';
import 'package:snowrun/presentation/navigate/i_navigate_tab_page.dart';
import 'package:snowrun/routes/router.gr.dart';
import 'package:snowrun/utils/local_store.dart';
import 'package:snowrun/utils/record_service.dart';

// Project imports:

class RecordPage extends StatefulWidget implements INavigateTabPage {
  const RecordPage({
    super.key,
  });

  @override
  RecordState createState() => RecordState();

  @override
  void onSelectedPage() {
    // TODO: implement onSelectedPage
  }
}

class RecordState extends State<RecordPage> {
  // final RecordBloc _recordBloc = getIt<RecordBloc>();
  final appRouter = getIt<AppRouter>();
  final recordService = getIt<RecordService>();
  final localStore = getIt<LocalStore>();

  @override
  void initState() {
    // recordService.startRecording();
    super.initState();
  }

  @override
  void dispose() {
    // print("WTF :: HOHO 00");
    // _recordBloc.add(const RecordEvent.stopRiding());
    // print("WTF :: HOHO 11");
    super.dispose();
  }

  // final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    localStore.testHiveData("test");
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: Colors.orange, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  recordService.startRecording();
                  print("start 누름");
                  print("HOHOHO start hive::: ${localStore.testHiveData("test")}");
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(width: 12,),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: Colors.orange, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  recordService.pauseRecording();
                  print("pause 누름");
                },
                icon: const Icon(Icons.pause),
              ),
            ),
            SizedBox(width: 12,),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: Colors.orange, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {
                  recordService.stopRecording();
                  print("stop 누름");
                },
                icon: const Icon(Icons.stop),
              ),
            ),
          ]),
        ),
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return BlocProvider(
//     create: (context) => _recordBloc..add(const RecordEvent.startRiding()),
//     child: BlocBuilder<RecordBloc, RecordingState>(
//       builder: (context, state) {
//         final record = state.record;
//         // print("HOHOHO111 ::: ${DateTime.now()}");
//         // print("HOHOHO222 ::: ${record.startedAt.getOrCrash()}");
//         // print("HOHOHO333 ::: ${DateTime.now().difference(record.startedAt.getOrCrash())}");
//         // print("HOHOHO444 ::: ${state.recordingType}");
//         // print("HOHOHO555 ::: ${record.latitude.getOrCrash()}");
//         // print("HOHOHO666 ::: ${record.longitude.getOrCrash()}");
//         return Scaffold(
//           body: SafeArea(
//             child: Center(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                   Container(
//                     child: Text(
//                       "${record.startedAt.getOrCrash().month}월 "
//                       "${record.startedAt.getOrCrash().day}일, "
//                       "\n${record.longitude.getOrCrash()}, "
//                       "${record.latitude.getOrCrash()} "
//                       "\n${state.recordingType.name}상태",
//                       // "\n${DateTime.now().difference(record.startedAt.getOrCrash()).inSeconds}초 라이딩 중",
//                       // "\n$_timerCount초 라이딩 중",
//                       style: const TextStyle(fontSize: 32),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 80,
//                   ),
//                   Text("${state.recordingType}"),
//                   Visibility(
//                     // visible: true,
//                     visible: state.recordingType == RecordingType.recording || state.recordingType == RecordingType.init,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(12),
//                           decoration: const BoxDecoration(
//                               color: Colors.orange, shape: BoxShape.circle),
//                           child: IconButton(
//                             onPressed: () {
//                               _recordBloc
//                                   .add(const RecordEvent.pauseRiding());
//                               print("pause 누름");
//                             },
//                             icon: const Icon(Icons.pause),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 24,
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(12),
//                           decoration: const BoxDecoration(
//                               color: Colors.orange, shape: BoxShape.circle),
//                           child: IconButton(
//                             onPressed: () {
//                               _recordBloc.add(const RecordEvent.stopRiding());
//                               recordService.stopRecording();
//                               print("stop 누름");
//                             },
//                             icon: const Icon(Icons.stop),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Visibility(
//                     visible: state.recordingType == RecordingType.pause ||
//                         state.recordingType == RecordingType.completed,
//                     // visible: state.recordingType != RecordingType.recording || state.recordingType != RecordingType.init,
//                     child: Row(children: [
//                       Container(
//                         padding: const EdgeInsets.all(12),
//                         decoration: const BoxDecoration(
//                             color: Colors.orange, shape: BoxShape.circle),
//                         child: IconButton(
//                           onPressed: () {
//                             _recordBloc.add(const RecordEvent.startRiding());
//                             print("start 누름");
//                           },
//                           icon: const Icon(Icons.arrow_forward_ios),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 24,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.all(12),
//                         decoration: const BoxDecoration(
//                             color: Colors.orange, shape: BoxShape.circle),
//                         child: IconButton(
//                           onPressed: () {
//                             _recordBloc.add(const RecordEvent.stopRiding());
//                             recordService.stopRecording();
//                             print("stop 누름");
//                           },
//                           icon: const Icon(Icons.stop),
//                         ),
//                       ),
//                     ]),
//                   ),
//                 ])),
//           ),
//         );
//       },
//     ),
//   );
// }
}
