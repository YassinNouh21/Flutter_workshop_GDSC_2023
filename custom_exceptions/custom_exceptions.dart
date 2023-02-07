import 'dart:io';

void main() {
  //create a custom exception  and throw it when the
  //user enter a string it's length is less than 10
  //using try catch if valid print "valid" else throw
  //the custom exception and catch it and print "invalid" 
  
  print("Enter your name: ");
  String? name = stdin.readLineSync(); //read user input





  //create a custom exception and throw it when the
  //user enter his age if less than 0 or greater than 100
  //using try catch if valid print "valid age" else throw
  //the custom exception and catch it and print "invalid age"
  print("Enter your age: ");
  int? age = int.parse(stdin.readLineSync()!); //read int from user input 
  print("your age is $age ");

}


