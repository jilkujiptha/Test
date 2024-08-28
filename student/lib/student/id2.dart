import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student/student/dgf';

class Student2 extends StatefulWidget {
  const Student2({super.key});

  @override
  State<Student2> createState() => __Student2State();
}

class __Student2State extends State<Student2> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();
  TextEditingController c6 = TextEditingController();

  List<dynamic> ls = [];
  Map<dynamic, dynamic> data = {};

  void add() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("id");
    try {
      ls = jsonDecode(res!);
      data["Name"] = c1.text;
      data["Roll Number"] = c2.text;
      data["Class"] = c3.text;
      data["Mark 1"] = c4.text;
      data["Mark 2"] = c5.text;
      data["Mark 3"] = c6.text;
      ls.add(data);
      pref.setString("id", jsonEncode(ls));
    } catch (error) {
      data = {
        "Name": c1.text,
        "Roll Number": c2.text,
        "Class": c3.text,
        "Mark 1": c4.text,
        "Mark 2": c5.text,
        "Mark 3": c6.text,
      };
      ls.add(data);
      pref.setString("id", jsonEncode(ls));
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Students Contact List",
          style: TextStyle(color: Colors.blue),
        )),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .5,
              child: Image.asset("./images/2534028.jpg"),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .5,
                child: ListView(
                  children: [
                    Text(
                      "NAME",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      child: Expanded(
                        child: TextField(
                          controller: c1,
                          decoration: InputDecoration(
                              hintText: "  First Name",
                              hintStyle: TextStyle(color: Colors.blue[200]),
                              enabled: true,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                    ),
                    Text(
                      "ROLL NUMBER",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      child: Expanded(
                        child: TextField(
                          controller: c2,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "  Roll Number ",
                              hintStyle: TextStyle(color: Colors.blue[200]),
                              enabled: true,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                    ),
                    Text(
                      "CLASS",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      child: Expanded(
                        child: TextField(
                          controller: c3,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "  Class ",
                              hintStyle: TextStyle(color: Colors.blue[200]),
                              enabled: true,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                    ),
                    Text(
                      "MATHS",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      child: Expanded(
                        child: TextField(
                          controller: c4,
                          decoration: InputDecoration(
                              hintText: "  Mark",
                              hintStyle: TextStyle(color: Colors.blue[200]),
                              enabled: true,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                    ),
                    Text(
                      "ENGLISH",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      child: Expanded(
                        child: TextField(
                          controller: c5,
                          decoration: InputDecoration(
                              hintText: "  Mark",
                              hintStyle: TextStyle(color: Colors.blue[200]),
                              enabled: true,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                    ),
                    Text(
                      "SCIENCE",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: 300,
                      child: Expanded(
                        child: TextField(
                          controller: c6,
                          decoration: InputDecoration(
                              hintText: "  Mark",
                              hintStyle: TextStyle(color: Colors.blue[200]),
                              enabled: true,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          add();
                          Navigator.pushNamed(context, "/id1",
                              arguments: jsonEncode(data));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Text("SUBMIT"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
