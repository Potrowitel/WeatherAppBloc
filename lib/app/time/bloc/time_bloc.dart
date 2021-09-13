import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_bloc/app/data/tick.dart';
import 'package:weather_app_bloc/app/time/bloc/time_bloc_barrel.dart';
import 'time_event.dart';
import 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  final Tick _tick;

  StreamSubscription<int>? _tickSubscription;

  TimeBloc({required Tick tick})
      : _tick = tick,
        super(TimeState.loading());

  @override
  Stream<TimeState> mapEventToState(
    TimeEvent event,
  ) async* {
    if (event is TimeStart) {
      yield TimeState.loading();

      yield* _mapTimerStartedToState(event);
    }
    if (event is TimeTicked) {
      yield TimeState.started(event.duration);
    }
  }

  @override
  Future<void> close() {
    _tickSubscription?.cancel();
    return super.close();
  }

  Stream<TimeState> _mapTimerStartedToState(TimeStart start) async* {
    yield TimeStartedState(start.duration);
    _tickSubscription?.cancel();
    _tickSubscription = _tick
        .tick(ticks: start.duration)
        .listen((duration) => add(TimeTicked(duration)));
  }

  // Stream<TimeState> _mapTimerTickedToState(TimeTicked tick) async* {
  //   yield TimeState.started(tick.duration);
  // }
}
