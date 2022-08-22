import 'package:dio/dio.dart';

import '../models/posts_model.dart';


class PostsService {
  Future<List<Welcome>> getPosts() async {
    List<Welcome> postsList = [];
    var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    var data = response.data;
    data.forEach((postItem) {
      Welcome post = Welcome.fromJson(postItem);
      postsList.add(post);
    });
    return postsList;
  }
}
