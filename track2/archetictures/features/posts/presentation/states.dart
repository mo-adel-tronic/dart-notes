import 'dart:io';
import '../domain/entity/post.dart';
import 'di.dart';
import 'msgs.dart';

sealed class PostStates{}

class AddPostState extends PostStates {
  void call() {
    recieverMsg('the title of the post');
    String title = stdin.readLineSync()!;
    recieverMsg('the body of the post');
    String body = stdin.readLineSync()!;
    addPost(Post(title: title, body: body));
    endTaskMsg();
  }
}

class DeletePostState extends PostStates {
  void call () {
    recieverMsg('the id of the post you want to delete');
    int id = int.parse(stdin.readLineSync()!);
    deletePost(id);
    endTaskMsg();
  }
}

class GetAllPostsState extends PostStates {
  void call() {
    getAllPosts().forEach((post) {
      print('''
Post ID: ${post.id}
Post Title: ${post.title}
Post Body: ${post.body}

********************************

''');
    });
    endTaskMsg();
  }
}

class GetSinglePostState extends PostStates {
  void call() {
    recieverMsg('the id no. of the wanted post');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    print('''
Post ID: ${post.id}
Post Title: ${post.title}
Post Body: ${post.body}

''');
    endTaskMsg();
  }
}

class UpdatePostState extends PostStates {
  void call() {
    recieverMsg('the id of the post you want to edit');
    int id = int.parse(stdin.readLineSync()!);
    Post post = getPost(id);
    recieverMsg('the new title of the post');
    String title = stdin.readLineSync()!;
    recieverMsg('the new body of the post');
    String body = stdin.readLineSync()!;
    updatePost(Post(title: title, body: body, id: post.id));
    endTaskMsg();
  }
}