import 'dart:math';

import 'package:either_dart/either.dart';

class API {
  String getData() {
    Random random = Random();
    int randomNumber = 1 + random.nextInt(10);

    if (randomNumber > 6) {
      throw Exception("Error");
    }
    return "data";
  }
}

int method1() {
  final random = Random();
  final value = random.nextInt(2);
  if (value % 2 == 0) {
    return value;
  } else {
    throw Exception("Exception Occured in method1");
  }
}

Future<int?> method2() async {
  final random = Random();
  final value = random.nextInt(3);
  Future.delayed(Duration(seconds: 1), () {
    if (value % 2 == 0) {
      return Future.value(value);
    } else {
      throw Exception("Exception Occured in method2");
    }
  });
}
