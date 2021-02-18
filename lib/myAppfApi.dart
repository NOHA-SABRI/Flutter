import 'package:flutter/material.dart';
import 'package:lab2/myCard.dart';
import 'package:lab2/services/PostsService.dart';

import 'models/Posts.dart';

class MyAppfApi extends StatefulWidget {
  MyAppfApi({Key key}) : super(key: key);

  @override
  _MyAppfApiState createState() => _MyAppfApiState();
}

class _MyAppfApiState extends State<MyAppfApi> {
  List<Post> postList = new List();
  @override
  void initState() {
      getPostFromsServer();
    super.initState();
  }
  @override
  void dispose() { 
    super.dispose();
  }
 getPostFromsServer() async {
      postList = await PostService().getPosts();
    setState(() {});
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posts from Api"),),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: postList.length,
        itemBuilder:(BuildContext context, int index){
            return MyCard(
              text: postList[index].title,
              txtBody:postList[index].body
            );
        }
        ),
       
    );
  }
}