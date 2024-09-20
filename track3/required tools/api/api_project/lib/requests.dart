import 'package:dio/dio.dart';

class PostRequests {
  late Dio dio;
  PostRequests() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30)
    );
    dio = Dio(options);
  }

  Future<List<Map<String, dynamic>>> getAllPosts () async {
    Response response = await dio.get("posts");
    if(response.statusCode == 200) {
      // [{}, {}] => [PostModel, PostModel]
      final List data = response.data as List;
      return data.map<Map<String, dynamic>>((post) => post)
          .toList();
    } else {
      throw Exception('server error');
    }
  }
}
