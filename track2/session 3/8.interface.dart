/*
In Dart, every class is implicit interface.

An interface defines a syntax that a class must follow. It is a contract that defines the capabilities of a class.

In dart there is no keyword interface but you can use class or abstract class to declare an interface. All classes implicitly define an interface. Mostly abstract class is used to declare an interface.

Multiple classes can be implemented.
*/


// ****************** Ex 1 ******************************
abstract class Person {
  String? name;

  Person() {
    print('constructor of person');
  }

  canWalk();
  canRun();
  void display() {
    print('display person');
  }
}
class Student implements Person {
  // try to remove attribute
  String? name;

  // try to remove => no error
  // try to use super => error
  Student() {
    print('constructor of student');
  }
 
 // implementation of canWalk()
  @override
  canWalk() {
    print('Student can walk');
  }

// implementation of canRun()
  @override
  canRun() {
    print('Student can run');
  }

  // try to remove this method
  @override
  int display() {
    return 5;
  }
}

class Student2 extends Person {

  Student2() {
    print('constructor of student 2');
  }
 // implementation of canWalk()
  @override
  canWalk() {
    print('Student can walk');
  }

// implementation of canRun()
  @override
  canRun() {
    print('Student can run');
  }

  // try to remove this method
  @override
  int display() {
    return 5;
  }
}

// ************************** Ex 2 **************************
abstract class CalculateTotal {
  int total();
}
abstract class CalculateAverage {
  double average();
}
class Student3 implements CalculateTotal, CalculateAverage {
// properties
  int marks1, marks2, marks3;
// constructor
  Student3(this.marks1, this.marks2, this.marks3);
// implementation of average()
  @override
  double average() {
    return total() / 3;
  }
// implementation of total()
  @override
  int total() {
    return marks1 + marks2 + marks3;
  }
}


// *********************** Main ***********************
void main () {
  
}