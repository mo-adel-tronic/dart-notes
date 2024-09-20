import 'dart:io';

void main () {
  // ! output
  // print
  print('use print');

  // print by output
  stdout.write('write by stdout\n');

  // ? The print() statement brings the cursor to next line while stdout.write() don’t bring the cursor to the next line, it remains in the same line.

  // ! input
  // String name = 'mohamed'
  String? name = stdin.readLineSync();
  // int? n = int.parse(stdin.readLineSync()!);

  print("Hello, $name! \nWelcome to dart!!");

}





/**
 * main function
 * create n1, n2 variables
 * int? n1 = int.parse(????!)
 * print("result = ${n1 + n2}");
 */