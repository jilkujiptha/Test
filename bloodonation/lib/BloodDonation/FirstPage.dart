import 'package:flutter/material.dart';

class FirsPage extends StatefulWidget {
  const FirsPage({super.key});

  @override
  State<FirsPage> createState() => _FirsPageState();
}

class _FirsPageState extends State<FirsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset("./image/blood-drop.webp")),
          ),
          SizedBox(height: 10,),
          Text("iBlood",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black
                ),
              ),
              Positioned(
                right: -5,
                left: -5,
                child: Container(
                 width: 20,
                 height: 20,
                 child: Center(child: Text("+",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ))
            ],
          )
        ],
      ),
    );
  }
}