import 'package:flutter/material.dart';

class AnimationDefaultTextStyle extends StatefulWidget {
  const AnimationDefaultTextStyle({super.key});

  @override
  State<AnimationDefaultTextStyle> createState() => _AnimationDefaultTextStyleState();
}

class _AnimationDefaultTextStyleState extends State<AnimationDefaultTextStyle> {
  bool _isText=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedDefaultTextStyle(child: Text("Hello World"), style: TextStyle(fontSize: _isText?50:20,
      fontWeight: _isText?FontWeight.bold:FontWeight.normal,
      color: _isText?Colors.grey:Colors.blueGrey
      ), 
      duration: Duration(milliseconds: 500)),
      floatingActionButton: FloatingActionButton(onPressed: (){
       setState(() {
          _isText=! _isText;
       });
      },
      child: Icon(Icons.switch_access_shortcut),),
    );
  }
}