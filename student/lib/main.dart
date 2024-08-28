import 'package:flutter/material.dart';
import 'package:student/student/id1.dart';
import 'package:student/student/id2.dart';
import 'package:student/student/id3.dart';
import 'package:student/student/id4.dart';

void main() {
  runApp(MaterialApp(home: Student1(), routes: {
    "/id1": (context) => Student1(),
    "/id2": (context) => Student2(),
    "/id3": (context) => Student3(),
    "/id4": (Context) => Student4()
  }));
}
