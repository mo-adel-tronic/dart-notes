void main () {
  // ! Regular Exp
  String txt = 'my names is mohamed, username: mohamed not Mohamed and my age is 30 %#@& ahmed';

  RegExp regex = RegExp(r'mohamed');

  print('''
*************************
First Search
*************************
''');
  print(regex.hasMatch(txt));

  print('***********');

  /*
    Iterable<RegExpMatch> 
    (RegExpMatch, RegExpMatch)

    (item) {
      RegExpMatch => mohamed
    }


    ('mohamed', 'mohamed')
  */
  print(regex.allMatches(txt).map((item) {
    return item.group(0);
  }));

  /*
  * Range
  - OR (item1|item2)
  */
  regex = RegExp(r'(mohamed|ahmed)');
  print('''
*************************
Second Search - OR
*************************
''');
/*
(
  RegExpMatch(),
  RegExpMatch(),
)
 Iterable<RegExpMatch> test = (RegExpMatch, RegExpMatch);
*/
  print(regex.allMatches(txt).map((item) => item.group(0)));


  /*
  * Range
  - AND [items]
  - From - To [From-to]
  */
  regex = RegExp(r'[^a-zA-Z0-9_ ]');

  print('''
*************************
3rd Search - AND
*************************
''');
  print(regex.allMatches(txt).map((item) => item.group(0)));


  /*
  * Classes
  - All => .
  */
  regex = RegExp(r'\S');
  print('''
*************************
4th Search - All Class
*************************
''');
  print(regex.allMatches(txt).map((item) => item.group(0)));


  /*
  * Classes
  - words => \w => [a-zA-Z0-9_]
  - words reverse => \W
  - digits => \d
  - non digits => \D
  - space => \s
  - non space => \S
  */
  regex = RegExp(r'\w');
  print('''
*************************
5th Search - Classes
*************************
''');
  print(regex.allMatches(txt).map((item) => item.group(0)));


  txt = '0 00 01 010 012 0120 0123 01230 1230 01234560 012134584';
  /*
  r'0\d*' => 
  * Quantifiers
  - + => one or more
  - * => zero or more
  - ? => zero or one
  - {n} => n of time
  - {n1,n2} => from n1 to n2
  - {n,} => from n to ...
  - ^ => Start with
  - $ => End with

  '^gre@gmail.com$'
  */
  regex = RegExp(r'0\d'); 
  print('''
*************************
6th Search - Quantifiers
*************************
''');
  print(regex.allMatches(txt).map((item) => item.group(0)));


  // ! Task => try to make a pattern for checking an email


}

