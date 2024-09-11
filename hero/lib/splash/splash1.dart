import 'package:flutter/material.dart';
import 'package:hero/splash/splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hideScreen();
  }

  Future<void>hideScreen()async{
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Splash2()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.flash_on,color: Colors.white,size: 100,),
              Text("Welcome to my App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)
            ],
          ),
        ),
      ),
    );
  }
}