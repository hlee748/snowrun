import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/domain/record/i_record_repository.dart';
import 'package:snowrun/domain/record/model/record.dart';
import 'package:snowrun/domain/record/record_failure.dart';

@LazySingleton(as: IRecordRepository)
class RecordRepository implements IRecordRepository {
  @override
  Future<Either<RecordFailure, Record>> initState() {
    // TODO: implement stopRiding
    throw UnimplementedError();
  }

  @override
  Future<Either<RecordFailure, Record>> pauseRiding() {
    // TODO: implement pauseRiding
    throw UnimplementedError();
  }

  @override
  Future<Either<RecordFailure, Record>> startRiding() {
    // TODO: implement startRiding
    throw UnimplementedError();
  }

  @override
  Future<Either<RecordFailure, Record>> stopRiding() {
    // TODO: implement stopRiding
    throw UnimplementedError();
  }
}