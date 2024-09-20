/***************
* ! History 
***************/
/*
* it was released by google in Nov 2013
* Based On OOP
* Smalltalk was released in the 1970s and was one of the first pure object-oriented programming languages.
*/

/***************
* ! Targets
***************/
/*
* It aims to help developers build modern web and mobile applications. It covers client, server, and now mobile with Flutter.

* According to the founders, one of the things they focused on while creating the language is that it be compatible with the web. Hence, one of the most important components is the Dart to JavaScript compiler.
*/

/***************
* ! Dart: platforms
***************/
/*
? Native platform:
* For apps targeting server side apps, mobile and desktop devices, Dart includes:
  ** Dart VM with just-in-time (JIT) compilation (DEV Stage) 
  ** an ahead-of-time (AOT) compiler for producing machine code. (Deploying Stage)
  ** Result: Machine Code
*/

/*
? Web platform:
* For apps targeting the web, 
  ** Dart Dev Compiler (DEV Stage)
  ** dart2js compiler (Deploying Stage)
  ** Result: JavaScript Code
*/


/***************
* ! FrameWorks
***************/
/*
? Flutter:
* For mobile Apps: Android, IOS.
*/
/*
? AngularDart:
* For Web Apps. 
*/

/***************
* ! Install
***************/ 
/*
1. go to dart page and download sdk (https://dart.dev/get-dart/archive)
2. copy folder dart-sdk to any folder you want 
  ex: C:\\src\dart-sdk
3. register the path of dart
  - search about windows variables
  - go to variable environment
  - double click on a path at the top
  - add a path of bin folder then ok
4. Test dart
  - search cmd
  - cli: dart or dart -v
*/

/***************
* ! main function
***************/
/*
* Every application has some point in its program that serves as the entry point to the application. When an application runs, it starts from that specified entry point. In Dart, the entry point is the main() function.

* when you run a Dart program, the compiler looks for the main() function and executes the code written in that function. If main() is not found, you will get an error and your application won’t run.
*/

/***************
* ! First Program
***************/
void main() {
  // Printing the text 'Hello World'
  print("Hello World");
}

/***************
* ! Syntax
***************/
/*
* Nothing without a semicolon
* Insert comment inline `//` or block of comment `/* */`
*/