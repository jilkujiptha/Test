import 'package:flutter/material.dart';

class AnimationCrossFade extends StatefulWidget {
  const AnimationCrossFade({super.key});

  @override
  State<AnimationCrossFade> createState() => _AnimationCrossFadeState();
}

class _AnimationCrossFadeState extends State<AnimationCrossFade> {
  bool _isShow=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedCrossFade(
        firstChild: IconButton(onPressed: (){
        setState(() {
          _isShow=true;
        });
      }, 
      icon: Icon(Icons.play_arrow)
      ), 
      
      secondChild:IconButton(onPressed: (){
      setState(() {
        _isShow=false;
      });
    }, 
   icon: Icon(Icons.pause)),

     crossFadeState: _isShow?CrossFadeState.showSecond:CrossFadeState.showFirst,
      duration: Duration(milliseconds: 500)),


    floatingActionButton: FloatingActionButton(onPressed: (){
     setState(() {
        _isShow= !_isShow;
     });
    },
    child: Icon(Icons.switch_access_shortcut,
    size: 30,),
    ),
    );
  }
}