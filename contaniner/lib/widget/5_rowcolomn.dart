import 'package:flutter/material.dart';
class RowColomn extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *.7,
          color: Colors.purple[400],
          ),
          

              )

    );
  }

}