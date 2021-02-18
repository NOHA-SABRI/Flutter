import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  String text;
  Posts({this.text }); 

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(title:Text("Post Details"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(widget.text ,style:TextStyle (color:Colors.blueGrey,fontSize: 30), textAlign:TextAlign.center,)),
      ),
       
    );
  }
}