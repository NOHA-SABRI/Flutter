
import 'package:dio/dio.dart';
import 'package:lab2/models/Posts.dart';

class PostService{
String url="https://jsonplaceholder.typicode.com/posts";

Future<List<Post>> getPosts() async {
    List<Post> posts = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    var data = response.data;
    print(data);
    data.forEach((value) {
      posts.add(Post.fromJson(value));
    });
    
    return posts;
  }

}