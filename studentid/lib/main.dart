import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:studentid/stud1.dart';
import 'package:studentid/stud2.dart';
import 'package:studentid/stud3.dart';

void main() async {
  await Hive.initFlutter();
  var student = await Hive.openBox("Student");
  runApp(MaterialApp(
    home: StudentId1(),
    routes: {
      "id1": (context) => StudentId1(),
      "id2": (context) => StudentId2(),
      "id3": (context) => StudentId3()
    },
  ));
}
