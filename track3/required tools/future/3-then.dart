import 'commands.dart';

void main() {
  printData();
  getCommand2();
}

void printData () async {
  // try to add await before getCommand1
  getCommand1()
  .then((value) => '$value\n this line from then 1'
  )
  .then((value) => print('$value\n this line from then 2\n'));

  print('after then');
}