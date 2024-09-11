import 'package:flutter/material.dart';
import 'package:splash/Splash/spalsh2.dart';
import 'package:splash/Splash/splash1.dart';
void main(){
  runApp(MaterialApp(
    home: Splash(),
    routes: {
      "/splash2":(context)=>Splash(),
      "/splash1":(context)=>Splash2()
    },
  ));
}