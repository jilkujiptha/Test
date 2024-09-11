import 'package:flutter/material.dart';

class fadeTransition extends StatefulWidget {
  const fadeTransition({super.key});

  @override
  State<fadeTransition> createState() => _fadeTransitionState();
}

class _fadeTransitionState extends State<fadeTransition> with SingleTickerProviderStateMixin {
    late AnimationController _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.forward();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeTransition(opacity: _controller,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            )
          ],
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
      child: Icon(Icons.add),),
    );
  }
}