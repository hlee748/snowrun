part of 'record_bloc.dart';

enum RecordingType { init, recording, pause, completed }

@freezed
class RecordingState with _$RecordingState {
  const factory RecordingState({
    required DefaultStatus status,
    required Record record,
    required RecordingType recordingType,
    int? initTimer,
  }) = _RecordingState;

  factory RecordingState.initial() => RecordingState(
        status: DefaultStatus.initial,
        record: Record.empty(),
        recordingType: RecordingType.init,
        initTimer: 3,
      );
}
