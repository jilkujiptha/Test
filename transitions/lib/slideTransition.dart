import 'package:flutter/material.dart';

class slideTransition extends StatefulWidget {
  const slideTransition({super.key});

  @override
  State<slideTransition> createState() => _slideTransitionState();
}

class _slideTransitionState extends State<slideTransition> with SingleTickerProviderStateMixin
{
  late AnimationController _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
  late Animation<Offset>_slideTransition;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _slideTransition=Tween<Offset>(begin: Offset(0, -1),end: Offset.zero).animate(_controller);
    _controller.forward();
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(position: _slideTransition,
        child: Text("Synnefo solutions"),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(_controller.isDismissed){
          _controller.forward();
        }
        else{
          _controller.reverse();
        }
      },
      child: Icon(Icons.switch_access_shortcut),
      ),
    );
  }
}