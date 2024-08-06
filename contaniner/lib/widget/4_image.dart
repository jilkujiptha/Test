import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
            child: Image.asset("./image/1.jpg",
            fit:  BoxFit.cover,
            alignment: Alignment.center,
    
            ),
          
          ),
        ),
      )
    );
  }
}