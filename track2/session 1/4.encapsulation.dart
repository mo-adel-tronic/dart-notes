class Student {
  final String username;
  final String password;
  // getter | setter
  int _age = 0;
  Student({required this.username, required this.password});

  int getAge() {
    return _age;
  }
  void setAge(int age) {
    _age = age;
  }

  int get age {
    return _age;
  } 

  void set age (int age) {
    if(age > 30) {
      _age = age;
      print('your age is set');
    } else {
      print('your age must be over 30');
    }
    
  }  
}


void main () {
  Student student = Student(username: 'mohamed', password: '465few');
  student._age = 20;
 
  print(student._age);

}



class BankAccount {
  // Private variables can only be accessed within the class itself
  // They are encapsulated and not directly accessible from outside
  double _balance = 0; // Encapsulated balance variable

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('$amount deposited successfully.');
    } else {
      print('Invalid amount for deposit.');
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('$amount withdrawn successfully.');
    } else {
      print('Insufficient funds or invalid amount for withdrawal.');
    }
  }

  // Getter method to access the balance (read-only)
  double get balance {
    return _balance;
  }
}

// void main() {
//   var account = BankAccount();

//   // Depositing money into the account
//   account.deposit(1000);

//   // Withdrawing money from the account
//   account.withdraw(500);

//   // Accessing the balance using the getter method
//   print('Current balance: ${account.balance}');
// }


