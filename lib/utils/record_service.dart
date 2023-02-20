import 'dart:async';
import 'dart:ui';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/injection.dart';
import 'package:snowrun/infrastructure/hive/hive_provider.dart';

@Singleton()
class HiveProvider {
  static const int timerDurationSecond = 2;
  final flutterBackgoundService = FlutterBackgroundService();


  initializeService() async {
    print('FBTEST ___ initializeService');
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
  }

  startRecording() async {
    print('FBTEST ___ startRecording ___ running invoke start111 ${await flutterBackgoundService.isRunning()}');
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
          const Duration(seconds: 2),
              (timer) async {
            final currentPosition = await _determinPosition();
            print('FBTEST ___ onStart ___ timer ___ ${DateTime.now().toIso8601String()}, ${currentPosition.latitude}, ${currentPosition.longitude}');
            // final deviceInfo = DeviceInfoPlugin();
            // String? device;
            // if (Platform.isAndroid) {
            //   final androidInfo = await deviceInfo.androidInfo;
            //   device = androidInfo.model;
            // }
            //
            // if (Platform.isIOS) {
            //   final iosInfo = await deviceInfo.iosInfo;
            //   device = iosInfo.model;
            // }
            //
            // service.invoke(
            //   'update',
            //   {
            //     "current_date": DateTime.now().toIso8601String(),
            //     "device": device,
            //   },
            // );
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

Future<Position> _determinPosition() async {
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
  Position position = await Geolocator.getCurrentPosition();
  return position;
}