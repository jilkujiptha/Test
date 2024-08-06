import 'package:flutter/material.dart';
class ListViewWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *2,
          color: Color.fromARGB(255, 240, 67, 67),
          child: ListView(
            scrollDirection: Axis.vertical,
            reverse: true,
            padding: EdgeInsets.all(10),
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 400,
                color: const Color.fromARGB(255, 233, 69, 69),
                child: Image.asset("./image/img1.jpeg"),

              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 400,
                color: Colors.black,
                child: Image.asset("./image/img2.jpg"),

              ),
              Container(
                 margin: EdgeInsets.all(10),
                width: 400,
                color: Colors.black,
                child: Image.asset("./image/img4.jpg"),

              ),
              Container(
                 margin: EdgeInsets.all(10),
                 width: 400,
                color: Colors.black,
                child: Image.asset("./image/img5.jpg"),
              )
             
            ],
          ),
        ),
      ),
    ); 
  }
}