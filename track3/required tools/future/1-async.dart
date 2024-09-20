import 'commands.dart';

void main() {
  getCommand1();
  getCommand2();
}

void getCommand1 () {
  Future.delayed(Duration(seconds: 5), () {
    print('Command 1 - Async');
  });
}

