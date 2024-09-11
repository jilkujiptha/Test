import 'package:flutter/material.dart';
import 'package:hero/Hero/Hero2.dart';
import 'package:hero/Hero1.dart';
import 'package:hero/splash/splash1.dart';
import 'package:hero/splash/splash2.dart';
import 'package:hero/splash/splashWork/splashWork2.dart';
import 'package:hero/splash/splashWork/splashwork1.dart';
void main(){
  runApp(MaterialApp(
    home: splashWork1(),
    routes: {
      "splashWork1":(context)=>splashWork1(),
      "splashWork2":(context)=>splashWork2()
    },
  ));
}