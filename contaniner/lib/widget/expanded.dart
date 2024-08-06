import 'package:flutter/material.dart';
class ExpandedWidget extends StatelessWidget{
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                child: Image.asset("./image/alexanderson1.jpg",
                fit: BoxFit.cover,
                ),
              )
              ),

               Expanded(
                flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 60,right: 60),
                width: double.infinity,
                color: Colors.teal,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Text("ALEX",style: TextStyle(letterSpacing: 4,color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Text("ANDERSON",style: TextStyle(letterSpacing: 8,color: Colors.white,fontSize: 15),),
                    SizedBox(height: 4),
                     ],
                ),
              ),
              ),
               Expanded(
                flex: 1,
                child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 56, 54, 54),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Icon(
                      Icons.hexagon_outlined,
                      size: 45,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("BRAND ART",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("Best Company",style: TextStyle(color: Colors.white,fontSize: 9),),
                      ],
                    )
                  ],
                ),
              )
              ),
          ],
        ),
      ),
    );
  }
}