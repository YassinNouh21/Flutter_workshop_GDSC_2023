import 'package:bloc_session/scr/core/utils/media_query_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterScreenWithoutBloc extends StatefulWidget {
  const CounterScreenWithoutBloc({super.key});

  @override
  State<CounterScreenWithoutBloc> createState() =>
      _CounterScreenWithoutBlocState();
}

class _CounterScreenWithoutBlocState extends State<CounterScreenWithoutBloc> {
  late int counter;
  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  _incrementCounter() {
    setState(() {
      counter += 1;
    });
  }

  _decrementCounter() {
    setState(() {
      counter -= 1;
    });
  }

  _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Without Bloc'),
      ),
      body: SizedBox(
        width: context.width,
        child: Column(
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
                  counter.toString(),
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
                      _incrementCounter();
                    },
                    child: const Icon(
                      Icons.plus_one,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _resetCounter();
                    },
                    child: const Icon(
                      Icons.replay_outlined,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _decrementCounter();
                    },
                    child: const Icon(
                      Icons.minimize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
