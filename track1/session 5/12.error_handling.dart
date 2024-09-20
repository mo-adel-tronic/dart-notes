/**
*! Error Handling in Dart
Error handling is an important aspect of programming that allows you to manage exceptions and errors that occur during the execution of a program. In Dart, error handling is achieved using try, catch, finally, and throw keywords. Let's break down each of these concepts.
*/

//? Try Block

void testTry () {
  try {
    print('start try');
    int result = 10 ~/ 10; // This will throw an exception
    print(result);
  } catch (e) {
    print('Caught an exception from me: $e');
  }

  print('test');
  
}

//? Finally Block

void testFinally () {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('This is the finally block.');
  }
}

//? Throw Handling

void checkAge(int age) {
  if (age < 0) {
    throw Exception('Age cannot be negative');
  }
  print('Age is $age');
}

void testThrow (int n) {
  try {
    checkAge(n);
  } catch (e) {
    print('Caught an exception: $e');
  }
}

void main () {
  testThrow(5);

  print('after check');
}