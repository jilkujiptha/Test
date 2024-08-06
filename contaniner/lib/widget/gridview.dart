import 'package:flutter/material.dart';
class GridViewWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *2,
          color: Colors.blueGrey,
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: const Color.fromARGB(255, 233, 69, 69),
                child: Image.asset("./image/img1.jpeg",
                fit: BoxFit.cover,
                ),

              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img2.jpg",
                fit: BoxFit.cover,
                ),
                ),

              Container(
                 margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img4.jpg",
                fit: BoxFit.cover
                
                ),

              ),
              Container(
                 margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img5.jpg",
                fit: BoxFit.cover
                ),
              ),
              Container(

 margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img6.jpg",
                fit: BoxFit.cover
                ),
              ),
              Container(
                 margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img7.jpg",
                fit: BoxFit.cover
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img8.jpg",
                fit: BoxFit.cover
                ),
              ),
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.black,
                child: Image.asset("./image/img8.jpg",
                fit: BoxFit.cover
                ),
               )


             
            ],
          ),
          ),
        ),
    ); 
  }
}