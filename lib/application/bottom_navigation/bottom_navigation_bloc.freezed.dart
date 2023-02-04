// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changePosition,
    required TResult Function(bool isInit) initBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changePosition,
    TResult? Function(bool isInit)? initBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changePosition,
    TResult Function(bool isInit)? initBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePosition value) changePosition,
    required TResult Function(_InitBottomSheet value) initBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePosition value)? changePosition,
    TResult? Function(_InitBottomSheet value)? initBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePosition value)? changePosition,
    TResult Function(_InitBottomSheet value)? initBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res, BottomNavigationEvent>;
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res,
        $Val extends BottomNavigationEvent>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangePositionCopyWith<$Res> {
  factory _$$_ChangePositionCopyWith(
          _$_ChangePosition value, $Res Function(_$_ChangePosition) then) =
      __$$_ChangePositionCopyWithImpl<$Res>;
  @useResult
  $Res call({int position});
}

/// @nodoc
class __$$_ChangePositionCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$_ChangePosition>
    implements _$$_ChangePositionCopyWith<$Res> {
  __$$_ChangePositionCopyWithImpl(
      _$_ChangePosition _value, $Res Function(_$_ChangePosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$_ChangePosition(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePosition implements _ChangePosition {
  const _$_ChangePosition(this.position);

  @override
  final int position;

  @override
  String toString() {
    return 'BottomNavigationEvent.changePosition(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePosition &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePositionCopyWith<_$_ChangePosition> get copyWith =>
      __$$_ChangePositionCopyWithImpl<_$_ChangePosition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changePosition,
    required TResult Function(bool isInit) initBottomSheet,
  }) {
    return changePosition(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changePosition,
    TResult? Function(bool isInit)? initBottomSheet,
  }) {
    return changePosition?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changePosition,
    TResult Function(bool isInit)? initBottomSheet,
    required TResult orElse(),
  }) {
    if (changePosition != null) {
      return changePosition(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePosition value) changePosition,
    required TResult Function(_InitBottomSheet value) initBottomSheet,
  }) {
    return changePosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePosition value)? changePosition,
    TResult? Function(_InitBottomSheet value)? initBottomSheet,
  }) {
    return changePosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePosition value)? changePosition,
    TResult Function(_InitBottomSheet value)? initBottomSheet,
    required TResult orElse(),
  }) {
    if (changePosition != null) {
      return changePosition(this);
    }
    return orElse();
  }
}

abstract class _ChangePosition implements BottomNavigationEvent {
  const factory _ChangePosition(final int position) = _$_ChangePosition;

  int get position;
  @JsonKey(ignore: true)
  _$$_ChangePositionCopyWith<_$_ChangePosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitBottomSheetCopyWith<$Res> {
  factory _$$_InitBottomSheetCopyWith(
          _$_InitBottomSheet value, $Res Function(_$_InitBottomSheet) then) =
      __$$_InitBottomSheetCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isInit});
}

/// @nodoc
class __$$_InitBottomSheetCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$_InitBottomSheet>
    implements _$$_InitBottomSheetCopyWith<$Res> {
  __$$_InitBottomSheetCopyWithImpl(
      _$_InitBottomSheet _value, $Res Function(_$_InitBottomSheet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInit = null,
  }) {
    return _then(_$_InitBottomSheet(
      null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitBottomSheet implements _InitBottomSheet {
  const _$_InitBottomSheet(this.isInit);

  @override
  final bool isInit;

  @override
  String toString() {
    return 'BottomNavigationEvent.initBottomSheet(isInit: $isInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitBottomSheet &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitBottomSheetCopyWith<_$_InitBottomSheet> get copyWith =>
      __$$_InitBottomSheetCopyWithImpl<_$_InitBottomSheet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changePosition,
    required TResult Function(bool isInit) initBottomSheet,
  }) {
    return initBottomSheet(isInit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changePosition,
    TResult? Function(bool isInit)? initBottomSheet,
  }) {
    return initBottomSheet?.call(isInit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changePosition,
    TResult Function(bool isInit)? initBottomSheet,
    required TResult orElse(),
  }) {
    if (initBottomSheet != null) {
      return initBottomSheet(isInit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePosition value) changePosition,
    required TResult Function(_InitBottomSheet value) initBottomSheet,
  }) {
    return initBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePosition value)? changePosition,
    TResult? Function(_InitBottomSheet value)? initBottomSheet,
  }) {
    return initBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePosition value)? changePosition,
    TResult Function(_InitBottomSheet value)? initBottomSheet,
    required TResult orElse(),
  }) {
    if (initBottomSheet != null) {
      return initBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _InitBottomSheet implements BottomNavigationEvent {
  const factory _InitBottomSheet(final bool isInit) = _$_InitBottomSheet;

  bool get isInit;
  @JsonKey(ignore: true)
  _$$_InitBottomSheetCopyWith<_$_InitBottomSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavigationState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  bool get isFinishInitialize => throw _privateConstructorUsedError;
  int get currentPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
  @useResult
  $Res call(
      {DefaultStatus status, bool isFinishInitialize, int currentPosition});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isFinishInitialize = null,
    Object? currentPosition = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      isFinishInitialize: null == isFinishInitialize
          ? _value.isFinishInitialize
          : isFinishInitialize // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavigationStateCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$_BottomNavigationStateCopyWith(_$_BottomNavigationState value,
          $Res Function(_$_BottomNavigationState) then) =
      __$$_BottomNavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DefaultStatus status, bool isFinishInitialize, int currentPosition});
}

/// @nodoc
class __$$_BottomNavigationStateCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res, _$_BottomNavigationState>
    implements _$$_BottomNavigationStateCopyWith<$Res> {
  __$$_BottomNavigationStateCopyWithImpl(_$_BottomNavigationState _value,
      $Res Function(_$_BottomNavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isFinishInitialize = null,
    Object? currentPosition = null,
  }) {
    return _then(_$_BottomNavigationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      isFinishInitialize: null == isFinishInitialize
          ? _value.isFinishInitialize
          : isFinishInitialize // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationState implements _BottomNavigationState {
  const _$_BottomNavigationState(
      {required this.status,
      required this.isFinishInitialize,
      required this.currentPosition});

  @override
  final DefaultStatus status;
  @override
  final bool isFinishInitialize;
  @override
  final int currentPosition;

  @override
  String toString() {
    return 'BottomNavigationState(status: $status, isFinishInitialize: $isFinishInitialize, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isFinishInitialize, isFinishInitialize) ||
                other.isFinishInitialize == isFinishInitialize) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isFinishInitialize, currentPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      __$$_BottomNavigationStateCopyWithImpl<_$_BottomNavigationState>(
          this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState(
      {required final DefaultStatus status,
      required final bool isFinishInitialize,
      required final int currentPosition}) = _$_BottomNavigationState;

  @override
  DefaultStatus get status;
  @override
  bool get isFinishInitialize;
  @override
  int get currentPosition;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
