bool isAdmin = true;

String txt = isAdmin ? 'welcome admin' : 'welcome user';

void test({String color = 'blue'}) {
  String btn = color == 'blue'? 'blue btn' : 'white btn';

  print(btn);
}

void main () {
  test(color: 'white');
  int deg = 90;

  // ! if
  if(deg == 90) {
    print('good');
  }

  // ! if, else
  if(deg == 90) {
    print('good');
  } else {
    print('bad');
  }

  // ! if, else if, else
  if(deg >= 85) {
    print('A');
  } else if (deg >= 75) {
    print('B');
  } else if (deg >= 65) {
    print('C');
  } else {
    print('F');
  }

  



  
}