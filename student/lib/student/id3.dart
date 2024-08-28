import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Student3 extends StatefulWidget {
  const Student3({super.key});

  @override
  State<Student3> createState() => _Student3State();
}

class _Student3State extends State<Student3> {
  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> mp =
        jsonDecode(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "STUDENT'S DETAILS",
          style: TextStyle(color: Colors.blue),
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 210,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NAME :",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  mp["Name"],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "ROLL NUMBER :",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  mp["Roll Number"],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "CLASS:",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  mp["Class"],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "MATHS :",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  mp["Mark 1"],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "ENGLISH :",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  mp["Mark 2"],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "SCIENCE :",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  mp["Mark 3"],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
