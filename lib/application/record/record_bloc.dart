import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun/application/default_status.dart';
import 'package:snowrun/domain/core/value_objects.dart';
import 'package:snowrun/domain/record/model/record.dart';

part 'record_event.dart';

part 'record_state.dart';

part 'record_bloc.freezed.dart';

@singleton
class RecordBloc extends Bloc<RecordEvent, RecordingState> {
  Timer? _timer;
  Timer? _initTimer;
  int initCountdown = 3;
  //TODO : RecordRepository(IRecordRepository) -> hive provider

  RecordBloc() : super(RecordingState.initial()) {
    // on<_InitState>((event, emit) {
    //   print("HOHOHO ::: init 실행");
    //   if(_timer == null) {
    //     _initTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
    //       initCountdown--;
    //       // emit(state.copyWith(initTimer: initCountdown--));
    //       print("initTimer111 ::: $initCountdown");
    //       if(initCountdown == 0){
    //         _initTimer?.cancel();
    //         emit(state.copyWith(
    //           recordingType: RecordingType.recording
    //         ));
    //       }
    //       print("initTimer222 ::: ${state.recordingType}");
    //     });
    //   }
    // });

    on<_UpdateRecord>((event, emit) async {
      // emit(state.copyWith(
      //   recordingType: RecordingType.recording,
      //   record: event.record,
      // ));
    });

    on<_StartRiding>((event, emit) {
      // stopRiding();
      // _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      //   final value = await _determinPosition();
      //   add(RecordEvent.updateRecord(
      //     Record(
      //         startedAt: DateVO(DateTime.now()),
      //         longitude: DoubleVO(value.longitude),
      //         latitude: DoubleVO(value.latitude)),
      //   ));
      // });
    });

    on<_PauseRiding>((event, emit) {
      // stopRiding();
      // emit(state.copyWith(
      //   recordingType: RecordingType.pause,
      // ));
    });

    on<_StopRiding>((event, emit) {
      // stopRiding();
      // emit(state.copyWith(
      //   recordingType: RecordingType.completed,
      // ));
    });
  }

  testtest(String ttt) {
    debugPrint("RECORDBLOC -> $ttt");
  }

  stopRiding() {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
    }
  }
}
