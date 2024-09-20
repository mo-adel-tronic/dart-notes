//! Loop in list

List<Map<String, dynamic>> students = [
  {
    'name': 'mohamed',
    'age': 20,
    'subjects': [
      {
        'title': 'dart',
        'lesson_count': 20
      }
    ]
  },
  {
    'name': 'ahmed',
    'age': 30,
    'subjects': <Map<String, dynamic>>[
      {
        'title': 'flutter',
        'lesson_count': 30
      }
    ]
  },
];

/*
By using loop in a list && ''' in a string, print the following string:

```
Student [i]:
  - name: STUDENT_NAME (UPPERCASE)
  - age: STUDENT_AGE
  - subjects:
    - Subject [i]:
      - title: SUBJECT_TITLE
      - lesson_count: SUBJECT_LESSON_COUNT
```
*/

void main () {
  String output = '';
  //! Create your loop here
  //! your job aims to concatenate all strings to output
  print(output);
}