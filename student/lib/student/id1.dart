import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Student1 extends StatefulWidget {
  const Student1({super.key});

  @override
  State<Student1> createState() => _Student1State();
}

class _Student1State extends State<Student1> {
  List<dynamic> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    contact();
  }

  void contact() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("id");
    setState(() {
      list = jsonDecode(res!);
    });
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Contact List",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        )),
        backgroundColor: Colors.white,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/id3",
                                arguments: jsonEncode(list[index]));
                          },
                          child: Text(list[index]["Name"])));
                }),
          )),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/id2");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.all(20),
            shape: CircleBorder()),
      ),
    );
  }
}
