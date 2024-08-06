import 'package:flutter/material.dart';
class PositionedWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
          
           height: 100,
           width: 200,
          //  color: Colors.green,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
          
                  ),
          
                ),
               
                Positioned(
                 right: -5,
                 top: -5,
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
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
      ),
    );
  }
}