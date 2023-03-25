import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_bloc.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_events.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPlusButton extends StatelessWidget {
  const CounterPlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: BlocBuilder<CounterBloc, CounterStates>(
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () {
              // BlocProvider.of<CounterBloc>(context) .add(IncrementCounterEvent());
              context.read<CounterBloc>().add(IncrementCounterEvent());
            },
            child: const Icon(
              Icons.plus_one,
            ),
          );
        },
      ),
    );
  }
}
