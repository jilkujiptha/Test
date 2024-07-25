import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Center(child: Text("Instagram", style: TextStyle(fontFamily: "edu",fontSize: 30,color: Color.fromRGBO(255, 255, 255, 1)),
            )),
            alignment: Alignment.center,
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(5, 5),
                )
              ],
              gradient: LinearGradient(colors: [const Color.fromARGB(255, 233, 219, 94),Colors.purple],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
              ),
              
              )
            ),
        ),
          ),
    );
  }

}