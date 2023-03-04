import 'dart:async';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/application/record/record_bloc.dart';
import 'package:snowrun/infrastructure/hive/hive_provider.dart';
import 'package:snowrun/injection/injection.dart';

@Singleton()
class RecordService {
  static const int timerDurationSecond = 2;
  final flutterBackgoundService = FlutterBackgroundService();

  // final hive = getIt<HiveProvider>();
  // hive.testHiveData("testData111111");

  // String? currentAuthToken;

  initializeService() async {
    print('FBTEST ___ initializeService');
    _checkLocationPermission();
    await flutterBackgoundService.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStart,
        autoStart: true,
        isForegroundMode: true,
      ),
      iosConfiguration: IosConfiguration(
        autoStart: true,
        onForeground: onStart,
        // you have to enable background fetch capability on xcode project
        onBackground: onIosBackground,
      ),
    );

    flutterBackgoundService.on('recording').listen(
      (event) {
        print('FBTEST ___ initializserService ___ listener on updateupdate');
        // getIt<RecordBloc>().testtest("FBTEST ___ initializserService ___ listener on updateupdate");
        // getIt<HiveProvider>().testHiveData("asdfsadfas Test");

        final currentDateTime = event?["currentDateTime"]?.toString();
        // final currentPosition = event?["currentPosition"]?.toString();
        // getIt<FirebaseFirestore>()

        if (currentDateTime?.isNotEmpty == true &&
            event?.toString().isNotEmpty == true) {
          FirebaseFirestore.instance
              .collection("firestoreTest")
              // .doc("$currentAuthToken")
              .doc("현주가탔어요")
              .update({'$currentDateTime': event?.toString()})
              // .set({'Today': DateTime.now()})
              .then((value) => print("add Today date"))
              .catchError((error) => print("Failed to add date: $error"));
        }

        // if (currentAuthToken != null) {
        //   FirebaseFirestore.instance
        //       .collection("record")
        //       // .doc("$currentAuthToken")
        //       .doc("현주가탔어요")
        //       .update({'$currentDateTime': event?.toString()})
        //       // .set({'Today': DateTime.now()})
        //       .then((value) => print("add Today date"))
        //       .catchError((error) => print("Failed to add date: $error"));
        // }
      },
    );
  }

  startRecording() async {
    // currentAuthToken = await FirebaseAuth.instance.currentUser?.getIdToken();
    print(
        'FBTEST ___ startRecording ___ running invoke start111 ${await flutterBackgoundService.isRunning()}');
    if (await flutterBackgoundService.isRunning() == false) {
      await flutterBackgoundService.startService();
      print('FBTEST ___ startRecording ___ running invoke start222');
    }
    print('FBTEST ___ startRecording ___ running invoke start333');
    flutterBackgoundService.invoke("start");
  }

  pauseRecording() {
    print('FBTEST ___ pauseRecording');
    flutterBackgoundService.invoke("pause");
  }

  stopRecording() {
    print('FBTEST ___ stopRecording');
    flutterBackgoundService.invoke("stop");
  }
}

@pragma('vm:entry-point')
bool onIosBackground(ServiceInstance service) {
  final currentLatLngs = [];
  print('FBTEST ___ onIosBackground');

  // WidgetsFlutterBinding.ensureInitialized();
  // DartPluginRegistrant.ensureInitialized();
  //
  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // await preferences.reload();
  // final log = preferences.getStringList('log') ?? <String>[];
  // log.add(DateTime.now().toIso8601String());
  // await preferences.setStringList('log', log);

  return true;
}

Timer? timer;

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  // Only available for flutter 3.0.0 and later
  print('FBTEST ___ onStart');
  DartPluginRegistrant.ensureInitialized();
  service.on('start').listen(
    (event) {
      print('FBTEST ___ onStart ___ listen on start');
      // final localStore = getIt<LocalStore>();
      // print("HOHOHO ::: ${localStore.recordBox}");
      timer ??= Timer.periodic(
        const Duration(seconds: 5),
        (timer) async {
          final currentPosition = await _getCurrentLocation();
          print(
              'FBTEST ___ onStart ___ timer ___ ${DateTime.now().toIso8601String()}, ${currentPosition.latitude}, ${currentPosition.longitude}');
          service.invoke(
            'recording',
            {
              "currentDateTime": DateTime.now().toIso8601String(),
              "currentPosition": currentPosition,
            },
          );
        },
      );
    },
  );

  service.on('pause').listen(
    (event) {
      print('FBTEST ___ onStart ___ listen on pause');
      stopRiding();
    },
  );

  service.on('stop').listen(
    (event) {
      print('FBTEST ___ onStart ___ listen on stop');
      stopRiding();
    },
  );
}

stopRiding() {
  if (timer != null) {
    timer?.cancel();
    timer = null;
  }
}

Future<Position> _getCurrentLocation() async {
  _checkLocationPermission();
  return await Geolocator.getCurrentPosition();
}

_checkLocationPermission() async {
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled');
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error("Location permission denied");
    }
  }
  if (permission == LocationPermission.deniedForever) {
    return Future.error('Location permissions are permanently denied');
  }
}
