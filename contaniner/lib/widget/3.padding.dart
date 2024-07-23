import 'package:flutter/material.dart';
class PaddingWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
          child: Center(
            child: Text("Welcome",
            style: TextStyle(backgroundColor: Colors.pink[200],fontSize: 30),
            ),
          ),
        )
      ),
      );
  }

}