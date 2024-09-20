// ! functions types

// ignore_for_file: dead_code

// ? void function
void func1() {
  print('this is function 1');
}

// ? returning-value function
int func2() {
  print('this is function 2');
  return 5;
  print('this is a dead line');
}

// ! Parameters types

// ? Ordered Parameter => required, optional, default
// required
void printUserData (String username, String password) {
  print('username is $username and password is $password');
}

// optional
void printUserData2 (String username, String password, [int? age]) {
  if(age != null) {
    print('username is $username and password is $password and age is $age');
  } else {
    print('username is $username and password is $password');
  }
}

// default
void printUserData3 (String username, String password, [int? age, String country = 'Egypt']) {
  if(age != null) {
    print('username is $username and password is $password and age is $age and contry is $country');
  } else {
    print('username is $username and password is $password and contry is $country');
  }
}

// ? Named Parameter => required, optional, default

// required
void printUserDataWithNamed ({required String username,required String password}) {
  print('username is $username and password is $password');
}

// optional
void printUserDataWithNamed2 ({required String username,required String password, int? age}) {
  if(age != null) {
    print('username is $username and password is $password and age is $age');
  } else {
    print('username is $username and password is $password');
  }
}

// default
void printUserDataWithNamed3 ({required String username,required String password, int? age, String country = 'Egypt'}) {
  if(age != null) {
    print('username is $username and password is $password and age is $age and contry is $country');
  } else {
    print('username is $username and password is $password and contry is $country');
  }
}


void printUserDataWithNamed4 (String username, {required String password, int? age, String country = 'Egypt', Function()? t, Function? t2}) {
  if(age != null) {
    print('username is $username and password is $password and age is $age and contry is $country');
  } else {
    print('username is $username and password is $password and contry is $country');
  }

  t!();
  t2!();
}

// arrow function
// String welcome2 (String user) => 'welcome $user';
// String welcome (String user) {
//   return 'welcome $user';
// }

void test() {
  print('test');
}
String test2() {
  return 'test2';
}
void testWithParam(String txt) {
  print(txt);
}
String test2WithParam(String txt) {
  return txt;
}
// function as a variable
Function? varTest;
String Function(String hamada)? varTest2;


List loopList(List myList,String Function(String item) map) {
  List output = [];
  for(String user in myList) {
    output.add(map(user));
  }
  return output;
}

String myTxt ({required String txt, int? age, bool isAdmin = false}) {
  return txt;
}
void main () {
  List<String> users = ['mohamed', 'ahmed', 'eslam'];

  // print(loopList(users, (String user) {
  //   return 'welcome ' + user;
  // }));

  print(users.map((element) => 'welcome ' + element).toList());

}