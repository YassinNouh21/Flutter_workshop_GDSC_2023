/*
1- Write a code that uses try-catch-finally to divide two numbers and catch any exceptions that may occur while dividing the numbers.\
*/
import 'api_dont_open_this_file.dart';

int divide(int a, [int b = 0]) {
  return a ~/ b;
}

// This method will throw an exception you should catch it in main()
// don't handle it in this method just throw it
void checkStringLength() {
  String str = '';
  List<int> list = [1, 2, 3];
  // EXCEPTION:
  list[9];
}

// create a custom exception class for email validation
class {
  // constructor
  // override toString method
}

void main(List<String> args) {
  //! Easy
  // if there is expection print it "12345" if not print also "12345"
  // HINT: use try-catch and finally
  print(divide(10));

  // search for a Exception called NoSuchMethodError
  List<int> list = [1, 2, 3];
  list.divide();

  // use the function above the main function
  try{
    checkStringLength();
  }
  // continue.......

  //! Medium
  // check if Email conatins @ and throw Custom exeption if it doesn't
  // PREFERED : use external function to check email
  String email1 = "skljdf@gmail.com";
  String email2 = "skljdfgmail.com";
  // continue.......
  try{

  }


  // don't care about this line 
  API api = API();
  // this function may return data or throw an exception
  // if it throws an exception catch it and print it

  api.getData();

}
