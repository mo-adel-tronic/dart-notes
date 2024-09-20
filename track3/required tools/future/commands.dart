void getCommand2() {
  print('Command 2 - Sync');
}

Future<String> getCommand1 () async {
  String data = await Future.delayed(Duration(seconds: 5), () {
    return 'Command 1 - Async';
  });
  return data;
}