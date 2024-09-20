// ignore_for_file: unused_local_variable
/***************
* ! Numbers
***************/

// ? Declare
num n1 = 5;
int n2 = 5;
double n3 = 5.00;

// ? exponential notation => double type
double n4 = 5e3; // 5 * 10^3 = 5000.0

// ? Properties
void numbersProps(int n) {
  print('''
*********************
sign
*********************
* return 0 or -1 or 1
* not exists in double type
* ex: ${n.sign == 1? 'positive':'negative'}

*********************
isEven, isOdd, isFinite, isInfinite, isNaN, isNegative
*********************
* return bool
* isEven & isOdd not exists in double

*********************
runtimeType
*********************
* return Type
* ex: ${n.runtimeType == int? 'n type is integer': 'not integer'}
'''); 
}

// ? Methods
void numbersMethods(int n) {
  print('''
*********************
abs()
*********************
* return absolute value (value without the sign)
* ex: ${n.abs()}

*********************
clamp()
*********************
* param: minRange, maxRange
* return n if n is in the range, or will jump to minRange if n < minRange, or will jump to maxRange if n > maxRange
* ex: ${n.clamp(2, 7.5)}

*********************
compareTo()
*********************
* param: other
* Returns a negative number if this is less than other, zero if they are equal, and a positive number if this is greater than other
* ex: ${n.compareTo(5)}

*********************
gcd()
*********************
* param: other
* Returns the greatest common divisor of this integer and [other]. show task 1
* ex: ${n.gcd(6)}

*********************
toString()
*********************
* Returns string of n
* ex: ${n.toString()}

*********************
toDouble() & toInt()
*********************
* Returns double of n
* ex: ${n.toDouble()}

*********************
toStringAsFixed()
*********************
* Params: fractionDigits
* Returns string of n and round by fractionDigits
* ex: ${n.toStringAsFixed(2)}

*********************
round() & roundToDouble() & ceil() & ceilToDouble() & floor() & floorToDouble()
*********************
* Returns n after round
* ex: ${n.round()}
''');
}

// ? Tasks