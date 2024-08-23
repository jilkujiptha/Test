import 'package:flutter/material.dart';
import 'package:student/student/id1.dart';
import 'package:student/student/id2.dart';
void main(){
  runApp(MaterialApp(
    home: Student1(),
    routes: {
      "/id1":(context)=>Student1(),
      "/id2":(context)=>Student2()
    }
  ));
}