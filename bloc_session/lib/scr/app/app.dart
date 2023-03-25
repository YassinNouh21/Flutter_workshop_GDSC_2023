import 'package:bloc_session/scr/features/counter_screen_with_bloc/ui/counter_screen_with_bloc.dart';
import 'package:bloc_session/scr/features/counter_screen_with_bloc/ui/counter_screen_with_cubit.dart';
import 'package:bloc_session/scr/features/counter_screen_without_bloc/counter_screen_without_bloc.dart';
import 'package:bloc_session/scr/features/users_screen/ui/users_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const UsersScreen(),
    );
  }
}
