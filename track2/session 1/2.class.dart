// ! Create Class
class User {
  //? ************ Static Props *********
  static int countUsers = 0;

  //? *********** object props **********
  String? username;
  String? password;
  int? age;

  //? ************ Methods *************
  void createUser(String username, String password, {int? age}) {
    this.username = username;
    this.password = password;
    this.age = age;
    countUsers++;
  }

  String getUserData() {
    return 'username is $username, password is $password ${age == null ? '':'age is $age'}';
  }
}



void main () {
  // create object
  User user1 = User();

  // initialize
  // user1.username = 'mohamed'
  user1.createUser('mohamed', 'gh');

  print(user1.getUserData());

}


