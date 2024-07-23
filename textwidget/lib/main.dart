import 'package:flutter/material.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "textwidget",
      home: Scaffold(
        body:  Center(
          child: Text("Hello have a good day <3",
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.amberAccent[200],
            backgroundColor: Colors.black87,
            fontWeight: FontWeight.bold,
            wordSpacing: 2
          ),
          
           ),
        ),
         )
      );
    
  }
}