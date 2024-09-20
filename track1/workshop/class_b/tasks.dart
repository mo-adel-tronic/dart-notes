/* 
! Task 1
create a function return Integer Digits Count in string

? Ex

getDigitCount('13vfb3g6') => 4
*/


int getDigitCount (String word){
int output = 0;
  for (int i = 0; i < word.length; i++) {
    if (RegExp(r'\d').hasMatch(word[i])) {
      output++;
    }
    
  }
  return output ;
}

/*
! Task 2
Find the Second Largest Number

Create a function that takes a list of numbers and returns the second largest number.

? Ex

secondLargest([10, 40, 30, 20, 50]) ➞ 40

secondLargest([25, 143, 89, 13, 105]) ➞ 105

secondLargest([54, 23, 11, 17, 10]) ➞ 23
*/



/*
! Task 3
Move Capital Letters to the Front

Create a function that moves all capital letters to the front of a word.

? Ex

capToFront("hApPy") ➞ "APhpy"

capToFront("moveMENT") ➞ "MENTmove"

capToFront("shOrtCAKE") ➞ "OCAKEshrt"
*/

void main () {
  print(getDigitCount("gh444g55ds"));
}