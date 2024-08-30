import 'package:contact/Contact/contactPage.dart';
import 'package:contact/Contact/displayPage.dart';
import 'package:contact/Contact/nextPage.dart';
// import 'package:contact/Contact/nextpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AddPage(), routes: {
    "/firstPage": (context) => Contact(),
    "/nextPage": (context) => AddPage(),
    "/displayPage": (context) => Display()
  }));
}