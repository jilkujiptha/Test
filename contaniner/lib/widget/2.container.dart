import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 200,
          height: 150,
          child: Center(
            child: Text("Invitation Card",style: TextStyle(fontFamily: "edu",fontSize: 30),
            ),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.pink[200],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(5, 5),
              )
            ],
            gradient: LinearGradient(colors: [Colors.purple,Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            )
          ),
        ),
      ),

      );
  }
}