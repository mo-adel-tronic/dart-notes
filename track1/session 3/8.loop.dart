void main () {
  // ! print 1 -> 10
  /*
  int i = 1
  print(i)

  i++
  print(i)

  i++
  print(i)
  */
  

  // ! loop in a list
  /*
  print(users[0]) => mohamed

  print(users[1]) => ahmed

  print(users[2]) => hossam

  print(users.length) => 3
  ...
  */
  List users = ['mohamed', 'ahmed', 'hossam'];
  for(int i = 0; i < users.length; i++) {
    print(users[i]);
  }

  for(String user in users) {
    print(user);
  }



  // ! While - do While
  int x = 1;
  while(x <= 10) {
    print(x);
    x++;
  }


  do {
    print(x);
    x++;
  } while(x <= 10);
}


/* Task 
loop on students
`
Student 1:
  name: mohamed
  age: 20
  subjects: 
    subject1:
      title: dart
      lesson count: 10
`
*/
