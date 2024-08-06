import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.blueGrey[200],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green[400],
                ),
              ),
              Positioned(
                top: 328,
                right: 190,
                child:Container(
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(100)
                  ),
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  child: Text("20"),

              ),
              ),
              ],
          
          ),
        ),
      ),
    );
  }
}