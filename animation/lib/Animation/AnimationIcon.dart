import 'package:flutter/material.dart';

class AnimationIcon extends StatefulWidget {
  const AnimationIcon({super.key});

  @override
  State<AnimationIcon> createState() => _AnimationIconState();
}

class _AnimationIconState extends State<AnimationIcon> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  bool _isIcon=false;
  @override
  void initState(){
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 500));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIcon(icon: _isIcon?AnimatedIcons.menu_arrow:AnimatedIcons.menu_close, 
        progress: _controller)),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            _isIcon=!_isIcon;
            _controller.forward(from: 0);
          });
        },
        child: Icon(Icons.switch_access_shortcut),
        ),
    );
  }
}