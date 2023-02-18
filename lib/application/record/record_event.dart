part of 'record_bloc.dart';

@freezed
class RecordEvent with _$RecordEvent {
  const factory RecordEvent.initState() = _InitState;
  const factory RecordEvent.startRiding() = _StartRiding;
  const factory RecordEvent.pauseRiding() = _PauseRiding;
  const factory RecordEvent.stopRiding() = _StopRiding;
  const factory RecordEvent.updateRecord(Record record) = _UpdateRecord;
}
