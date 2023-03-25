import 'package:bloc_session/scr/features/counter_screen_with_bloc/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  int counter = 0;
  CounterCubit() : super(InitialCounterState(counter: 0));

  static CounterCubit get(BuildContext context) =>
      BlocProvider.of<CounterCubit>(context);
  // set of methods
  void resetCounter() {
    counter = 0;
    emit(InitialCounterState(counter: counter));
  }

  void decrementCounter() {
    counter -= 1;
    emit(DecrementCounterState(counter: counter));
  }

  void incrementCounter() {
    counter += 1;
    emit(IncrementCounterState(counter: counter));
  }
}
