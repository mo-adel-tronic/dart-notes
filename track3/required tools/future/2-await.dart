import 'commands.dart';

void main() async {
  // try remove line 7, replace 5 to printData(), then remove async main
  String data = await getCommand1();
  getCommand2();
  print('success: $data');
}

void printData () async {
    String data = await getCommand1();
    print('success: $data');
}