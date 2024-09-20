/*
Mixins are a way of reusing the code in multiple classes.

Mixins are declared using the keyword mixin followed by the mixin name.

Three keywords are used while working with mixins: mixin, with, and on. It is possible to use multiple mixins in a class.

? What Is Allowed For Mixin?
You can add properties and static variables.
You can add regular, abstract, and static methods.
You can use one or more mixins in a class.

? What Is Not Allowed For Mixin?
You can’t define a constructor.
You can’t extend a mixin.
You can’t create an object of mixin.
*/

// ****************** Ex 1 *****************
mixin CanFly {
  void fly() {
    print('I can fly');
  }

  void display() {
    print('from fly');
  }
}
mixin CanWalk {
  void walk() {
    print('I can walk');
  }
  void display();
}

class Bird with CanFly ,CanWalk {
  
}

class Human with CanWalk {
 void display () {}
}


// ******************** Ex 2 ********************
abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

// you have two chices > 1. use mixin | 2. override run method 
class Dog extends Animal with CanRun{
  // constructor
  Dog(String name, double speed) : super(name, speed);


}

class Test{}

void main () {
  Bird bird = Bird();

  bird.display();
}