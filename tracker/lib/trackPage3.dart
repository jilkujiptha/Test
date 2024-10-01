import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ExpensePage3 extends StatefulWidget {
  const ExpensePage3({super.key});

  @override
  State<ExpensePage3> createState() => _ExpensePage3State();
}

class _ExpensePage3State extends State<ExpensePage3> {
  List<dynamic> ls = [];
  final _track = Hive.box("myBox");
  Uint8List? img;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  void readData() {
    if (_track.get("1") != null) {
      ls = _track.get("1");
    } else {
      print(ls);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Center(
              child: Text(
            "STATEMENTS",
            style: TextStyle(color: Colors.grey),
          )),
          iconTheme: IconThemeData(color: Colors.grey),
        ),
        body: Expanded(
          child: ListView.builder(
              itemCount: ls.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width * .9,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white70,
                    // boxShadow: [
                    //   BoxShadow(
                    //       blurRadius: 5,
                    //       offset: Offset(5, 5),
                    //       color: const Color.fromARGB(255, 241, 238, 211))
                    // ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              color: Colors.grey,
                            ),
                            child: Center(child: Text(ls[index]["time"])),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 90,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10)),
                                    color: Colors.grey[900]),
                                child: Center(
                                  child: Text(
                                    ls[index]["date"],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            ls[index]["food"],
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "₹",
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                ls[index]["money"],
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 80,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ls[index]["IMAGE"] != null
                              ? Image.memory(
                                  img = base64Decode(
                                    ls[index]["IMAGE"],
                                  ),
                                  fit: BoxFit.cover,
                                )
                              : Icon(Icons.image),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
