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
  
  for (int i = 0; i < students.length; i++) {
    Map<String, dynamic> student = students[i];

    print("Student ${i + 1}");
    print("\t- Name: ${student["name"].toString().toUpperCase()}");
    print("\t- Age: ${student["age"]}");
    print("\t- Subjects: ");
   

    for (int x = 0; x < students[i]["subjects"].length; x++) {
      Map<String, dynamic> subject = students[i]["subjects"][x];
      print("\t\t- subject ${x + 1}");
      print("\t\t\t- Title: ${subject["title"]}");
      print("\t\t\t- Lessons: ${subject["lesson_count"]}");
    
    }
    
  }
  
}
