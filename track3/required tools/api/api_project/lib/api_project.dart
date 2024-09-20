import 'package:api_project/requests.dart';

void main () async {
  PostRequests postRequests = PostRequests();
  List<Map<String, dynamic>> data = await  postRequests.getAllPosts();

  print(data[0]["userId"]);
}
