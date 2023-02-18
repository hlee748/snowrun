import 'package:dartz/dartz.dart';
import 'package:snowrun/domain/record/model/record.dart';
import 'package:snowrun/domain/record/record_failure.dart';

abstract class IRecordRepository {
  Future<Either<RecordFailure, Record>> initState();
  Future<Either<RecordFailure, Record>> startRiding();
  Future<Either<RecordFailure, Record>> pauseRiding();
  Future<Either<RecordFailure, Record>> stopRiding();

}