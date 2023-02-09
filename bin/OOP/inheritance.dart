// Base / Super / parent Class
class Person {
  var id, name, course;
  //^ Implacity Super Class
  // Person() {
  //   print('hello i\'m a super class');
  // }
  //^ Explacity Super Class
  Person(this.id, this.name, this.course) {
    print('hello i\'m a super class');
  }
  void displayInfo() {
    print('Info  : name is ${this.name}  course is ${this.course}');
  }
}

// derived / child class
class Student extends Person {
  //^ Implacity super constructor Class
  // Student() {
  //   print('hello i\'m a sub class');
  // }
  //^ Explacity Super Class
  Student(id, name, course) : super(id, name, course);
  void displayLearningCourse() {
    print('Student ${this.name} learn course ${this.course}');
  }
}

class Instructor extends Person {
  Instructor(id, name, course) : super(id, name, course);
  void displayTeachingCourse() {
    print('Instructor ${this.name} teaching course ${this.course}');
  }
}
