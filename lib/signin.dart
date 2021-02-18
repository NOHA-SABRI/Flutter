import 'package:flutter/material.dart';
import 'package:lab2/myAppfApi.dart';


class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Center(child: Text("Sign in")),),
       body:Container(
         child: Center(
           child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                
                  child: TextFormField(
             decoration: InputDecoration(border:OutlineInputBorder(),hintText: ' Email'),
             
           ),
                ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: InputDecoration(border:OutlineInputBorder(),hintText: ' Password'),
               
             ),
           ),
          Container(padding: EdgeInsets.all(5),
         
          child: RaisedButton(child: Container(width: 300 ,child: Center(child: Text("Sign in"))),
          onPressed: (){
             Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyAppfApi()),
          );
          },
          color: Colors.blue,
          textColor: Colors.white,
          ),
          ),
           Padding(padding:const EdgeInsets.all(16),
               child: Center(child: Text('Need an account? Register',style: TextStyle(fontSize: 18),)),
           ),
            Padding(padding:const EdgeInsets.all(16),
               child: Center(child: Text('Forget Password'),),
           )
           ],),
         )
       ),
    );
  }
}