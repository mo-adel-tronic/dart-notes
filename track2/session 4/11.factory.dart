/*
All of the constructors that you have learned until now are generative constructors. Dart also provides a special type of constructor called a factory constructor.

Generative constructors only create an instance of the class. But, the factory constructor can return an instance of the class or even subclass.

? Rules For Factory Constructors
Factory constructor must return an instance of the class or sub-class.
You can’t use `this` keyword inside factory constructor.
It can be named or unnamed and called like normal constructor.
It can’t access instance members of the class.
*/


// ******************** Ex 1 without factory *********************
class Area {
  final int length;
  final int breadth;
  final int area;

  // Initializer list 
 const Area(this.length, this.breadth) : area = length * breadth;
}

// ******************** Ex 2 with factory *********************
class Area2 {
  final int length;
  final int breadth;
  final int area;

  // private constructor
  const Area2._internal(this.length, this.breadth) : area = length * breadth;

  // Factory constructor
  factory Area2(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirect to private constructor
    return Area2._internal(length, breadth);
  }
}

// ******************** Ex 3 with factory *********************
enum ShapeType { circle, rectangle, square }

abstract class Shape {
  // factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      case ShapeType.square:
        // return Test(); // error
      default:
        throw 'Invalid shape type';
    }
  }
  // method
  void draw();
}
// abstract class Shape {
//   // factory constructor
//   factory Shape(String type) {
//     switch (type) {
//       case 'circle':
//         return Circle();
//       case 'rectangle':
//         return Rectangle();
//       case 'square':
//         // return Test(); // error
//       default:
//         throw 'Invalid shape type';
//     }
//   }
//   // method
//   void draw();
// }

class Test {}

class Circle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing circle');
  }
}

class Rectangle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing rectangle');
  }
}



void main() {
  // ****************** using Area without factory
  Area area = Area(-10, 20);
  print("Area is: ${area.area}");

  // notice that here is a negative value
  Area area2 = Area(-10, 20);
  print("Area is: ${area2.area}");

  // ****************** using Area with factory
  Area2 area3 = Area2(10, 20);
  print("Area is: ${area3.area}");

  // notice that here is negative value
  Area2 area4 = Area2(-10, 20);
  print("Area is: ${area4.area}");

  // ***************** Instance of circle by shape class
  Shape shape = Shape(ShapeType.circle);
  shape.draw();
}



/*
create object > Factory constructor
  - error
  - Constructor
*/