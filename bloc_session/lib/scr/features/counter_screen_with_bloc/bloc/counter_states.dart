abstract class CounterStates {}

//^ for init and reset states
class InitialCounterState extends CounterStates {
  //final int counter = 0;

  final int counter;
  InitialCounterState({
    required this.counter,
  });
}

class IncrementCounterState extends CounterStates {
  final int counter;
  IncrementCounterState({
    required this.counter,
  });
}

class DecrementCounterState extends CounterStates {
  final int counter;
  DecrementCounterState({
    required this.counter,
  });
}

//^ for dec and inc states
class ChangedCounterState extends CounterStates {}
