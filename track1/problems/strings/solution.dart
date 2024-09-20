void getReversedString (String txt) {
  /*
    txt = 'welcome';
    output = '';
    output += txt[6];
    output += txt[5];
    ...
    output += txt[0];
  */
  String output = '';
  for (int i = txt.length - 1; i >= 0; i--) {
    output += txt[i];
  }
  print(output);
}

void main () {
  getReversedString('welcome');
}