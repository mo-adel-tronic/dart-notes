// ignore_for_file: unused_local_variable

/***************
* ! Data Types in Dart

Data types in Dart represent the type of values that variables can hold. Dart is a statically-typed language, which means that variables are explicitly declared with their data types. Dart supports the following data types:

* ? Primitive Data Types
  * * bool
  * * String
  * * num
  * * * int
  * * * double

* ? Complex Data Types => list, set, map, Runes, Symbol
***************/

Map users = {
  "username": 'mohamed'
};

List users2 = ['mohamed'];


/*
users {
  user {
    username, age, pass, orders {
      order {
        products {
          product {
            title, price
          }
        }
      }
    }
  }
}

*/
List useRs = [
  {
    "username": "ahmed", 
    "age": 20,
    "pass": "gjfkjjh",
    "orders": [
      [
        {},
        {}
      ],
      []
    ]
  },
  {},
];


void main () {
  List users = [
    {
      'username': 'mohamed',
      'orders': [
        [],
        [
          {},
          {
            'title': 'g'
          }
        ]
      ]
    },
    {
      'username': 'mohamed',
      'orders': [
        [],
        [
          {},
          {
            'title': 'g'
          }
        ]
      ]
    }
  ];

}
