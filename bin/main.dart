import 'OOP/abstruction.dart';
import 'OOP/extension.dart';
import 'OOP/point.dart';
//import 'OOP/student.dart';
import 'OOP/inheritance.dart';

void main() {
  //^ Classes, Objects and overriding
  // Point p = Point.origin(1, 2);
  // Point p2 = Point.origin(11, 12);
  // //p.displayPoint();
  // //p2.displayPoint();
  // //print(p.toString());
  // Point p3 = p.addTwoPoint(p2);
  // print(p3);
  // Point p4 = p3 + p;
  // print(p4);

//^ Encapsulation
  // Student std = Student();
  // std.setNameStudent('Ali');
  // print(std.getNameOfStudent());
  // std.name = 'Omar';
  // print(std.name);

  //^ Inheritance
  // // try 1
  // //try 2 //^ super constructor
  // Student std = Student(1, 'hamada', 'OOP');
  // Instructor instructor = Instructor(1, 'ali', 'OOP');
  // // form super class
  // std.displayInfo();
  // // from child class
  // std.displayLearningCourse();
  // instructor.displayTeachingCourse();
  //^ Abstraction
  //! Error
  //Animal animal = Animal();
  // Fish fish = Fish();
  // fish.eating();
  // fish.move();
  // fish.drink();
  // fish.swim('fish');

  // print('---------------------------');
  // Bird bird = Bird();
  // bird.eating();
  // bird.move();
  // bird.drink();
  //^ Mixins
  Duck duck = Duck();
  duck.flying('duck');
  duck.swim('duck');
  duck.walking('duck');

//^ Extension
  String x = '2';
  int res = x.parseToInt();
  print('res = ${res * 2}');
}
