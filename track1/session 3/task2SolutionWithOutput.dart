//! Loop in list

List<Map<String, dynamic>> students = [
  {
    'name': 'mohamed',
    'age': 20,
    'subjects': [
      {'title': 'dart', 'lesson_count': 20}
    ]
  },
  {
    'name': 'ahmed',
    'age': 30,
    'subjects': <Map<String, dynamic>>[
      {'title': 'flutter', 'lesson_count': 30}
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

void main() {
  String output = '';
  for (int i = 0; i < students.length; i++) {
    Map<String, dynamic> student = students[i];

    output += """
Student: ${i + 1}
\tName: ${student["name"].toString().toUpperCase()}
\tAge: ${student["age"]}
\tSubjects:
""";

    for (int x = 0; x < student["subjects"].length; x++) {
      Map<String, dynamic> subject = student["subjects"][x];

      output += '''
\t\tSubject ${x + 1}
\t\t\tTitle: ${subject["title"]}
\t\t\tLessons: ${subject["lesson_count"]}
''';
    }
    output += "***************************\n";
  }

  print(output);
}
