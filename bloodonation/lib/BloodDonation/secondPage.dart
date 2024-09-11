import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  List<dynamic> ls = [];
  String? group;

  void initState() {
    // TODO: implement initState
    super.initState();
    display();
  }

  void display() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("blood");
    setState(() {
      if (res != null) {
        ls = jsonDecode(res);
      }
      print(ls);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "DETAILS",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 180, 15, 3),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "View All",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: ls.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * .9,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(5, 5),
                              color: const Color.fromARGB(255, 250, 225, 223))
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10),
                                    ),
                                    color: Colors.red[900]),
                              ),
                              Container(
                                  width: 80,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(10)),
                                      color: Colors.grey[900]),
                                  child: Center(
                                    child: Text(
                                      ls[index]["bloodgroup"],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ls[index]["name"],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                              Row(
                                children: [
                                  Text("Place: "),
                                  Text(
                                    ls[index]["location"],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Age: "),
                                  Text(
                                    ls[index]["age"],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    ls[index]["gender"],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Weight: "),
                                  Text(
                                    ls[index]["weight"],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Contact No: "),
                                  Text(
                                    ls[index]["number"],
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: const Color.fromARGB(255, 250, 225, 223))
            ]),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/thirdPage");
            },
            child: Text(
              "Register",
              style: TextStyle(
                  color: const Color.fromARGB(255, 180, 15, 3), fontSize: 19),
            )),
      ),
    );
  }
}
