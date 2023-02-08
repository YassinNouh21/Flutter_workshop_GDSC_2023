import 'dart_temp.dart';
import 'dart_temp_2.dart';

void main(List<String> args) {
  // Create a Stream that emits a series of numbers, then listen to and display those numbers in the console.
  Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  // here is your answer

  //*********************************** */
  // Create a Stream that listens to a stream of numbers and returns the sum of all numbers.
  Stream<int> stream2 = Stream.fromIterable([1, 2, 3, 4, 5]);
  // here is your answer
  stream2.listen((event) {});

  //*********************************** */
  // using stream in the line 3 filter it to get only even numbers

  //*********************************** */
  // is it appropriate to use stream in the line 14 to get only even numbers or should I use Future instead?
  var data = Stream.fromIterable([1]);

  //*********************************** */
  // in this block of code stream will throw an exception
  var data2 = Stream.fromIterable([1, 2, 3]);
  var error = Stream.error(Exception('An error occurred'));

  // use it to catch the exception here

  //*********************************** */
  // doSomethig is Future function try to use it to get the data
  print('Started');
  //doSomething().
  print('Finished');
  /*
  the output should be:
   Started
   Finished
   Returning the data
  */
  //*********************************** */
  // doSomethig2 is Future function try to use it to get the data
  print('Started');
  // doSomething2
  print('Finished');
  /*
  the output should be:
   Started
   Finished
   [Value 1, Value 2, Value 3]
  */

  //*********************************** */
  // doSomethig3 is Future function try to use it to get the data // TAKE CARE OF THE EXCEPTION
  print('Started');
  // doSomething3
  print('Finished');

  //*********************************** */
  // complete this code and solve the error
  print('Started');
  // List<String> values = await getValues();
  // there is rest of the code HERE:
  print('Finished');
  // Output:
  // Started
  // Finished
  // Value 1
  // Value 2
  // Value 3

  //*********************************** */
  // getDate2 is Future function try to use it to get the data and it throws an exception catch it and print it
  // also use custom exception to throw it // IMPORTANT it wouldn't work if you use 

  print('Started');
  // getData()
  print('Finished');
  // Output:
  // Started
  // Finished
  // Error Occured

  //*********************************** */
  /*
  PREPARED BY :
  YASSIN HASHEM
  
  */
}
//
