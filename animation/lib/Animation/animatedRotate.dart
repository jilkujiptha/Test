import 'package:flutter/material.dart';

class AnimationRotate extends StatefulWidget {
  const AnimationRotate({super.key});

  @override
  State<AnimationRotate> createState() => _AnimationRotateState();
}

class _AnimationRotateState extends State<AnimationRotate> {
  bool _isTurn=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AnimatedRotation(turns: _isTurn?1:0, duration: Duration(seconds: 5),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.black,
        child: Text("Hello Team"),
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _isTurn=!_isTurn;
        });
      },
      child: Icon(Icons.switch_access_shortcut),
      ),
    );
  }
}