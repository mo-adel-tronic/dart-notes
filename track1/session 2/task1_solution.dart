/*
* Create a variable `students`

students => {
  Student1,
  Student2 => {
    name => 'STUDENT_NAME',
    age => STUDENT_AGE,
    subjects => {
      SUBJECT1,
      SUBJECT2 => {
        title => SUBJECT_TITLE,
        lesson_count => LESSON_COUNT
      }
    }
  }
}

* print all student-1 data individualy.

*/

List<Map<String, dynamic>> students = [
  {
    'name': 'mohamed',
    'age': 20,
    'subjects': [
      {'title': 'dart', 'lesson_count': 20},
      {'title': 'flutter', 'lesson_count': 20},
    ]
  },
  {
    'name': 'ahmed',
    'age': 20,
    'subjects': <Map<String, dynamic>>[
      {'title': 'dart', 'lesson_count': 20}
    ]
  },
];

void main() {
  // // print student1 name
  // print(students[0]['name']);

  // // print student1 age
  // print(students[0]['age']);

  // // print student1 all subjects
  // print(students[0]['subjects']);

  // // print student1 single subject
  // print(students[0]['subjects'][0]);

  // // print student1 title of subject
  // print(students[0]['subjects'][0]['title']);

  // // print student1 lesson_count of subject
  // print(students[0]['subjects'][0]['lesson_count']);

  // loop
  String output = "";
  for (int i = 0; i < students.length; i++) {
    Map<String, dynamic> student = students[i];
    // print('student ${i+1}');
    // print("Name: ${student['name']}");
    // print("Subjects: ");

    output += """
student ${i + 1}
\tName: ${student["name"]}
\tAge: ${student["age"]}
\tSubjects:
""";

    for (int x = 0; x < students[i]["subjects"].length; x++) {
      Map<String, dynamic> subject = students[i]["subjects"][x];
      // print("subject ${x+1}");
      // print("title: ${subject["title"]}");
      output += '''
\t\tsubject ${x+1}
\t\t\ttitle: ${subject['title']}
''';
    }
    output += '***********************\n';
  }
  print(output);
}
