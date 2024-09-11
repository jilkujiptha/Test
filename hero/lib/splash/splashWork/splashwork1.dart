import 'package:flutter/material.dart';
import 'package:hero/splash/splashWork/splashWork2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashWork1 extends StatefulWidget {
  const splashWork1({super.key});

  @override
  State<splashWork1> createState() => _splashWork1State();
}

class _splashWork1State extends State<splashWork1> {
  bool _islogged=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void login()async{
    final pref=await SharedPreferences.getInstance();
    final res=pref.getString("login");
    if(_islogged==true){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>splashWork2()));
    }
    else{
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("HOME PAGE")),),
    );
  }
}