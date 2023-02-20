// Package imports:
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:device_info_plus/device_info_plus.dart';

// Project imports:

@module
abstract class InjectableModule {
  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();

  @lazySingleton
  FirebaseRemoteConfig get firebaseRemoteConfig => FirebaseRemoteConfig.instance;
}
