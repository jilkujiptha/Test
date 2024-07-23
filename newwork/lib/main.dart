import 'package:flutter/material.dart';
void main(){
  runApp(New());
}
class New extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "text widget",
      home: Scaffold(
        body: Center
        (child: Text("Username:**********Password:*********",
        maxLines: 2,
        style: TextStyle(
          backgroundColor: Colors.black12,
          fontWeight: FontWeight.bold

        ),
        )),
      )
    );
  }
}