
import 'package:flutter/material.dart';
import 'package:lab2/posts.dart';


class MyCard extends StatefulWidget {
  String text;
  String txtBody;
  
  MyCard({this.text,this.txtBody}) ;
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return (
      Card(child: Column(
        children: [
          GestureDetector(child: Text(widget.text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign:TextAlign.center ,),onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=> Posts( text: widget.txtBody)));
          },),
            
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Center(child: FlatButton.icon(onPressed: null, icon: Icon(Icons.thumb_up), label:Text("Like"))),
                    FlatButton.icon(onPressed: null, icon: Icon(Icons.comment_bank), label:Text("Comments"))
                 ],
               ),
             ),
           
          

        ],
      ),)
    );
  }
}


 