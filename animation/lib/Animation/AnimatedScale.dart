import 'package:flutter/material.dart';

class AnimationScale extends StatefulWidget {
  const AnimationScale({super.key});

  @override
  State<AnimationScale> createState() => _AnimationScaleState();
}

class _AnimationScaleState extends State<AnimationScale> {
  bool _isScale=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(scale: _isScale?1.5:1, duration: Duration(seconds: 1),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.black,
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _isScale=! _isScale;
        });
      },
      child: Icon(Icons.switch_access_shortcut),
      ),
    );
  }
}