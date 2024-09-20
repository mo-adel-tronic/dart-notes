void main () {
  // ? Value
  String txt = 'welcome mohamed'; // '', "" => new line is not allowed in editor
  String txt2 = '''welcome
  
  mohamed'''; // ''' ''', """ """ => new line is allowed in editor and will be seen in print
  print('******************');
  print('check txt2');
  print('******************');
  print(txt2);

  // ? Proccesses And Tricks
  // * backSlash
  txt = 'welcome \'mohamed\'\n\twe will learn dart';
  print('\n\n******************');
  print('check backSlash');
  print('******************');
  print(txt);

  // * Concatenation
  txt = 'welcome';
  txt = txt + ' mohamed'; 
  print('\n\n******************');
  print('check concatenate by +');
  print('******************');
  print(txt);

  txt = 'welcome'' mohamed';
  print('\n\n******************');
  print('check concatenate by string cascade');
  print('******************');
  print(txt);

  // * Interpolation
  txt = 'mohamed';
  txt = 'welcome $txt';
  print('\n\n******************');
  print('check Interpolation with only variable name');
  print('******************');
  print(txt);

  txt = 'mohamed';
  txt = 'welcome ${txt.toUpperCase()}';
  print('\n\n******************');
  print('check Interpolation with variable and its method');
  print('******************');
  print(txt);

  // * Access By Index
  txt = 'welcome';
  print('\n\n******************');
  print('check Index');
  print('******************');
  print(txt[0]);


  // ? Properties
  print('\n\n******************');
  print('check properties');
  print('******************');
  print('''
  isEmpty: ${txt.isEmpty}
  isNotEmpty: ${txt.isNotEmpty}
  length of character: ${txt.length}
  data type: ${txt.runtimeType}''');

  // ? Methods
  print('\n\n******************');
  print('check Methods');
  print('******************');
  print('''---------- Get int data from string ----------
  compareTo [-1, 0, 1]: 
    ex1: ${'go'.compareTo('ao')} because a in Unicode is before g
    ex2: ${'go'.compareTo('yo')} because y in Unicode is after g
    ex3: ${'go'.compareTo('go')} because two values is equal
    ex4: ${'go'.compareTo('gy')} because y in Unicode is after o

  -----------------------

  search for the match in string: return first position or -1
    ex: ${txt.indexOf('el')}
    note: the same with lastIndexOf but the search start from the end of string
  
  ---------- Get bool data from string ----------
  search for the match in string:  
    ex: ${txt.contains('el')}

  --------------------

  check end with pattern: 
    ex: ${txt.endsWith('me')}
  
  --------------------

  check start with pattern: 
    ex: ${txt.startsWith('we')}
  
  ---------- Get String data from string ----------

  shift string from left by the width if width is greater than this.length: 
    ex1 has no effect: ${txt.padLeft(7)}
    ex1 length has no effect: ${txt.padLeft(7).length}
    ex2 spaces added: ${txt.padLeft(8)}
    ex2 length increased by 1: ${txt.padLeft(8).length}
    ex3 > added: ${txt.padLeft(8, '>')}
    ex3 length increased by 1: ${txt.padLeft(8, '>').length}
    note: the same with padRight
  
  --------------------

  replace all matches: 
    ex: ${'resume'.replaceAll('e', 'é')}

  --------------------

  replace first match: 
    ex1: ${'resume'.replaceFirst('e', 'é')}
    ex2: ${'resume'.replaceFirst('e', 'é', 2)}

  --------------------

  replace with range: 
    ex: ${'resume'.replaceRange(2, null, 'place')}

  --------------------

  slice string: 
    ex: ${'http://google.com'.substring(0, 4)}
  
  --------------------

  convert case to lower: 
    ex: ${'WELCOME'.toLowerCase()}
  
  --------------------

  convert case to upper: 
    ex: ${txt.toUpperCase()}
  
  --------------------

  remove extra spaces from start and end of string: 
    ex: ${'\twe want to removes unnecessary spacing from each sides\n'.trim()}
    note: can remove start only by trimLeft, and remove end spaces by trimRight
  
  ---------- Get List data from string ----------

  split string into items: 
    ex: ${'google.com'.split('.')}
  
  ''');

}