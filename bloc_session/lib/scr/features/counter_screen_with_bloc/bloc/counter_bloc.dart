import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_events.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int counter = 0;
  CounterBloc() : super(InitialCounterState(counter: 0)) {
    on((event, emit) {
      if (event is ResetCounterEvent) {
        counter = 0;
        // fair event // notify new state // change current state
        emit(InitialCounterState(counter: counter));
      } else if (event is IncrementCounterEvent) {
        counter += 1;
        emit(IncrementCounterState(counter: counter));
      } else if (event is DecrementCounterEvent) {
        counter -= 1;
        emit(DecrementCounterState(counter: counter));
      } else {
        counter = 0;
        emit(InitialCounterState(counter: counter));
      }
    });
  }
}
