import 'package:either_dart/either.dart';

import 'dart_temp.dart';

// Future<Either<Exception, int>> method3() async {}

void main(List<String> args) async {
  // how to extract the data from Either
  Either<String, int> success = Right(1);
  Either<String, int> failure = Left("Error");
  // using the above variables print the data
  print('');
  print('');
  /*
    Output:
    Success value: 10
    Failure value: Error
  */

  // *********************************** */
  // method1 is a function that returns an integer or throws an exception use Either to handle the exception
  // don't forget to use Either and try and catch

  method1();
  // print the result of method1

  // *********************************** */
  // method2 is a function that returns a Future that returns an integer or throws an exception use Either to handle the exception
  // don't forget to use await
  await method2();
  // print the result of method2

  // *********************************** */
  // Create a method that returns Either<Exception, int> and use it to handle the exception
  // look at the method3
  // method3();
  // DON'T FORGET TO USE FOLD TO PRINT THE RESULT
  // *********************************** */
}

// PREPARED BY : YASSIN NOUH