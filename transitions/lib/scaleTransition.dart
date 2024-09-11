import 'package:flutter/material.dart';

class scaleTransition extends StatefulWidget {
  const scaleTransition({super.key});

  @override
  State<scaleTransition> createState() => _scaleTransitionState();
}

class _scaleTransitionState extends State<scaleTransition> with SingleTickerProviderStateMixin {
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
           ScaleTransition(scale: _controller,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
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