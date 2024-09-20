// ! Create Class
class User {
  String? username;
  String? password;
  int? age;

  User({required String username, required String password, int? age}) {
    this.username = username;
    this.password = password;
    this.age = age;
  }

  String getUserData() {
    return 'username is $username, password is $password ${age == null ? '' : 'age is $age'}';
  }
}

void test(User user) {
  print(user);
}

void main() {
  // create object & initialize
  // User user1 = User(username: 'mohamed', password: '15dfwe');

  // test(User(username: 'mohamed', password: '15dfwe'));

  // Admin admin = Admin(username: 'mohamed', password: '1224');

  // Student student = Student(username: 'mohamed', password: '15dwq');

  // print(user1.username);
  // print(admin.username);
  // print(student.username);
 

}

// Best Writing
class Admin {
  String username;
  String password;
  int? age;

  // this.username = username
  Admin({required this.username, required this.password, this.age});
}

// Best Performance
class Student {
  final String username;
  final String password;
  final int? age;

  const Student({required this.username, required this.password, this.age});
}

// ! Named Constructor

//? Ex 1
class Car {
  Car() {
    print("Non-parameterized constructor invoked");
  }
  // try to create engine 'E1001'
  Car.namedConst(String engine) {
    print("The engine is : ${engine}");
  }
}

//? Ex2
class EdgeInsets {
  // attributes
  double top = 0;
  double bottom = 0;
  double left = 0;
  double right = 0;

  // methods
  void printSides() {
    print('''
left: $left
right: $right
top: $top
bottom: $bottom
''');
  }

  EdgeInsets.all(double sides) {
    top = sides;
    bottom = sides;
    left = sides;
    right = sides;
  }

  EdgeInsets.only({
    this.left = 0,
    this.bottom = 0,
    this.right = 0,
    this.top = 0
    });
}
