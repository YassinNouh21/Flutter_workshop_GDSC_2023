import 'package:bloc_session/scr/core/utils/media_query_data.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_bloc.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_events.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/cubit/counter_states.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/cubit/counter_cubit.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/ui/counter_text.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/ui/plus_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenWithCubit extends StatelessWidget {
  const CounterScreenWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter With Cubit'),
        ),
        body: SizedBox(
          width: context.width,
          child: BlocBuilder<CounterCubit, CounterStates>(
            builder: (context, state) {
              if (state is IncrementCounterState) {
                print('it is init state ${state.counter}');
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 5,
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    width: context.width * 0.5,
                    height: context.height * 0.2,
                    child: Center(
                      child: Text(
                        CounterCubit.get(context).counter.toString(),
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.1,
                  ),
                  SizedBox(
                    width: context.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            CounterCubit.get(context).incrementCounter();
                          },
                          child: const Icon(
                            Icons.plus_one,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            // BlocProvider.of<CounterCubit>(context)
                            //     .resetCounter();
                            CounterCubit.get(context).resetCounter();
                          },
                          child: const Icon(
                            Icons.replay_outlined,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            CounterCubit.get(context).decrementCounter();
                          },
                          child: const Icon(
                            Icons.minimize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
