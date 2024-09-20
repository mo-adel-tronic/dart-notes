void main () {
  // ? Values
  bool checker = false; // or false

  // ? Properties
  print(checker.runtimeType == bool); // return Type bool

  // ? Methods
  print(checker.toString().runtimeType == String); // return true
}