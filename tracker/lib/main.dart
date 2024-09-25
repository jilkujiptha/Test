import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tracker/firstPage.dart';
import 'package:tracker/trackPage1.dart';
import 'package:tracker/trackPage2.dart';

void main() async {
  await Hive.initFlutter();
  var track = await Hive.openBox("myBox");
  runApp(MaterialApp(
    home: ExpensePage1(),
    routes: {
      "track1": (context) => ExpensePage1(),
      "track2": (context) => ExpensePage2()
    },
  ));
}
