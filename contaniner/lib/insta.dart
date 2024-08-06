import 'package:flutter/material.dart';

class InstaWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[350],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 100,
                width: double.infinity,
                color: const Color.fromARGB(255, 80, 79, 79),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.blueGrey[300],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5,right: 5),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.blueGrey[300],
                      ),
                    ),
                     
                       Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.blueGrey[300],
                      ),
                    ),
                      Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.blueGrey[300],
                      ),
                    ),
                      Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.blueGrey[300],
                      ),
                    ),

                    Container(
                        margin: EdgeInsets.only(left: 5,right: 5),
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.blueGrey[300],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                color: Colors.grey[350],
                child: ListView(
                  children: [
                    Container(
                margin: EdgeInsets.only(left: 10,right: 10,top:10 ),
                padding: EdgeInsets.only(left: 5),
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                height: 60,
                width: double.infinity,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 300,
                width: 500,
                color: const Color.fromARGB(255, 105, 104, 104),
              ),
              Container(
                 margin: EdgeInsets.only(bottom: 5,left: 10,right: 10),
                 color:Colors.blue,
                alignment: Alignment.centerLeft,
                height: 60,
                width: double.infinity,
              ),
            Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                height: 60,
                width: double.infinity,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                height: 300,
                width: 500,
                color: const Color.fromARGB(255, 105, 104, 104),
              ),

            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 5),
                color: Color.fromARGB(213, 255, 255, 255),
                alignment: Alignment.centerLeft,
                height: 60,
                width: double.infinity,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: 500,
                color: const Color.fromARGB(255, 105, 104, 104),
              )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}