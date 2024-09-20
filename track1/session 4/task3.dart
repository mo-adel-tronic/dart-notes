/***************
*! Task 3 - Return backwards order

*? Create a function that takes a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

*! Examples

*? getBackwards('my name is mohamed') ➞ 'mohamed is name my'
***************/

// remove this comment and write your code here!!!!
String getBackwards (String txt) {
  String output = '';
  output = txt.split(' ').reversed.toList().join(' ');
  return output;
}


/***************
*! Task 5 - Draw Game

*? Create a function that takes a square size to draw game boards that look like this:

 --- --- --- 
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- --- 

*? note that square size of the above drawing is 3 `that mean 3*3`
*! Examples

*? draw(4) ➞ 

 --- --- --- ---
|   |   |   |   |
 --- --- --- --- 
|   |   |   |   |
 --- --- --- --- 
|   |   |   |   |
 --- --- --- ---
|   |   |   |   |
 --- --- --- ---

***************/

// remove this comment and write your code here!!!!
String drawDash (int n) {
  String output = ' ';
  output += '--- ' * n;
  return output;
}
String drawPip (int n) {
  String output = '|';
  output += '   |' * n;
  return output;
}
String draw (int n) {
  String output = '';
  for (int i = 1; i <= n; i++) {
    output += drawDash(n) + '\n';
    output += drawPip(n) + '\n';
  }
  output += drawDash(n);
  return output;
}



void main () {
  print(draw(4));
}