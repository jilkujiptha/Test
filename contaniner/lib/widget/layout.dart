import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 500,
                  height: 350,
                  color: Colors.blueGrey,
                  child: Image.asset(
                    "./image/lake.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text("Kandersteg, Switzerland",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.red,
                      ),
                      Text(
                        "41",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 65,
                          ),
                          Icon(
                            Icons.call,
                            size: 25,
                            color: Colors.indigo[600],
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(
                            Icons.send,
                            size: 25,
                            color: Colors.indigo[600],
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(
                            Icons.share,
                            size: 25,
                            color: Colors.indigo[600],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 70),
                          Text(
                            "CALL",
                            style: TextStyle(color: Colors.indigo),
                          ),
                          SizedBox(width: 70),
                          Text(
                            "ROUTE",
                            style: TextStyle(color: Colors.indigo),
                          ),
                          SizedBox(width: 70),
                          Text(
                            "SHARE",
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                      SizedBox(height: 50),
                      Text(
                          "Lake Oeschinen lies at the foot of the Blüemlisalp. Situated 1,578 meter above sea level, it is one of the larger Alpine Lakes. A gondola train leads from Kandersteg to a location near the lake. A half-hour walk across pastures and through pine forest takes you to the lake. The water in the lake warms up to 20 degree Celsius in the summer. Activities enjoyed here include rowing or riding on the summer toboggan run.")
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
