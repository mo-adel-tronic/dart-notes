// ignore_for_file: unused_local_variable

void main () {
  // ! Arithmetic Operators

  // ? + => Adds two operands
  print(5 + 6); // 11

  // ? - => Subtracts the second operand from the first 
  print(6 - 5); // 1

  // ? * => Multiplies both operands
  print(5 * 6); // 30

  // ? / => Divides the first operand by the second operand
  print(30 / 6); // 5

  // ? ~/ => Divides the first operand by the second operand and returns an integer 
  print(31 ~/ 6); // 5

  // ? % => Gets the remainder after division of one number by another
  print(31 % 6); // 1


  // ! Concatination Operator

  // ? +
  String firstName = 'mohamed';
  String lastName = 'adel';
  String fulName = firstName + ' ' + lastName; // mohamed adel

  // ! assignment Operators

  // ? = => assign variable to value 
  var x = 5;
  
  // ? += => Adds old value with assigned value and save it in the same variable
  x += 3; // x = x + 3  

  // ? ++ => increment by 1
  x++; // x = x + 1

  // ? -- => decrement by 1
  x--; // x = x - 1
  

  // ! Comparison Operators

  // ? > => greater than
  print(5 > 4); // true

  // ? < => smaller than
  print(5 < 4); // false

  // ? >= => greater than or equal
  print(5 >= 5); // true

  // ? <= => smaller than or equal
  print(5 <= 5); // true
  
  // ? == => is equal
  print(5 == 5); // true
  
  // ? != => is not equal
  print(5 != 5); // false

  // ! Logical Operators

  // ? && => AND
  print((5 == 5) && (4 == 4) && (3 > 7)); // false

  // ? || => OR
  print((5 == 5) || (4 == 2) || (3 > 7)); // true

  // ? ! => NOT
  print((5 == 5) && (4 == 4) && !(3 > 7)); // true
}