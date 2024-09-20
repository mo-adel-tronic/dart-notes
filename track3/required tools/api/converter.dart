
import 'dart:convert';

void main () {
  List<dynamic> fromJson = jsonDecode(jsonData);

  print(fromJson.runtimeType);
}

String jsonData = '''
[
    {
        "id": 1,
        "username": "mohamed",
        "isAdmin": true,
        "skills": ["dart", "flutter"]
    },
    {
        "id": 2,
        "username": "ahmed",
        "isAdmin": false,
        "skills": ["dart", "flutter"]
    }
]
''';