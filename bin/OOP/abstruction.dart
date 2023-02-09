import 'mixins.dart';

abstract class Animal {
  // Abstract function
  void eating();
  void move();
  // Concrete function
  void drink() {
    print('The Animal is Drinking');
  }
  // Swim, Fly , walk
}

class Fish extends Animal with Swim {
  @override
  void eating() {
    print('The fish is eating herbs');
  }

  @override
  void move() {
    print('The fish is swimming');
  }
}

class Dog extends Animal {
  @override
  void eating() {
    print('The Dog is eating dog food');
  }

  @override
  void move() {
    print('The dog is walking using four legs');
  }
}

class Bird extends Animal {
  @override
  void eating() {
    print('The bird is eating bird food');
  }

  @override
  void move() {
    print('The bird is flying');
  }
}

class Duck extends Animal with Fly, Swim, Walk {
  @override
  void eating() {
    // TODO: implement eating
  }

  @override
  void move() {
    // TODO: implement move
  }
}
