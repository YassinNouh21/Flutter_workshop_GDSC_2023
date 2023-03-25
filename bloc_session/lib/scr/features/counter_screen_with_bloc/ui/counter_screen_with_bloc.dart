import 'package:bloc_session/scr/core/api/end_points.dart';
import 'package:bloc_session/scr/core/helpers/http_helper.dart';
import 'package:bloc_session/scr/core/utils/media_query_data.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_bloc.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_events.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_states.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/ui/counter_text.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/ui/plus_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenWithBloc extends StatelessWidget {
  const CounterScreenWithBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter With Bloc'),
        ),
        body: SizedBox(
          width: context.width,
          child: BlocBuilder<CounterBloc, CounterStates>(
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
                    child: const CounterTextContainer(),
                  ),
                  SizedBox(
                    height: context.height * 0.1,
                  ),
                  SizedBox(
                    width: context.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CounterPlusButton(),
                        FloatingActionButton(
                          onPressed: () {
                            BlocProvider.of<CounterBloc>(context)
                                .add(ResetCounterEvent());
                          },
                          child: const Icon(
                            Icons.replay_outlined,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            BlocProvider.of<CounterBloc>(context)
                                .add(DecrementCounterEvent());
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
