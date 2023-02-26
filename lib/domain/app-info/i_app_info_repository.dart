import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/app-info/app_info_failure.dart';
import 'package:snowrun/domain/app-info/model/app_info.dart';

abstract class IAppInfoRepository {
  Future<Either<AppInfoFailure, AppInfo>> getAppInfo();
}