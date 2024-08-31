import 'package:contact/Contact/contactPage.dart';
import 'package:contact/Contact/displayPage.dart';
import 'package:contact/Contact/homePage.dart';
// import 'package:contact/Contact/nextpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AddPage(), routes: {
    "/homePage": (context) => AddPage(),
    "/firstPage": (context) => Contact(),
    "/displayPage": (context) => Display()
  }));
}
