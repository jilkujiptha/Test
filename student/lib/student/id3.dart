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
    final Map<dynamic,dynamic>mp=jsonDecode(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Center(child: Text("STUDENT'S DETAILS",style: TextStyle(color: Colors.blue),)),),
      body: Container(
        child: Column(
          children: [
            Text(mp["Name"]),
              Text(mp["Roll Number"]),
               Text(mp["Mark 1"]),
                Text(mp["Mark 2"]),
                 Text(mp["Mark 3"]),
          ],
        ),
      ),
    );
  }
}