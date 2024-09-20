/***************
* ! Variables Declaration
***************/

// Declare by keyword `var`
var x = 5;

// Declare by Data type
int y = 6;
String z = '';
dynamic a = '';


/***************
* ! Variables Naming Rules

* ? Don't start with a number.
* ? Don't leave spaces.
* ? Don't use special character.
* ? Don't use reserved keyword.
* ? can only use _ , $
* ? it is best practice to use small case
* ? it is best practice to use camelCase 
***************/


/***************
* ! Constant Declaration
***************/

// * Declare by keyword const
const constant1 = 6;
const int constant2 = 5;
// this will not show error
const constant3 = constant1;
// this will get error
// const constant4 = a; 

// * Declare by keyword final
final final1 = 6;
final int final2 = 5;
// this will not show error
final final3 = final1;
// this will not show error
final final4 = a; // فاينال 4 = أ

/***************
* ! Null Sefty
***************/
String? username;


/***************
* ! Task
***************/
// ? Create an integer variable whose name is variable number
// ? Create a variable whose type is unknown and its name is variable number 2
// ? Create an integer constant whose name is constant number
// ? Create a constant whose value equal the constant number
// ? Create a constant whose value equal the variable number  

void main () {
  a = 'erger';
  a = 5;
  a= 6;

  if(a == 5) {
    username = 'mohamed';
  } 

  print(username!.toUpperCase()); 
}