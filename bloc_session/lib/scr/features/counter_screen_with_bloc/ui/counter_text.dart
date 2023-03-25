import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_bloc.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/bloc/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterTextContainer extends StatelessWidget {
  const CounterTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterStates>(
      builder: (context, state) {
        return Center(
          child: Text(
            BlocProvider.of<CounterBloc>(context).counter.toString(),
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
