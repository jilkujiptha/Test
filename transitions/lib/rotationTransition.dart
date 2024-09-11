import 'package:flutter/material.dart';

class rotationTransition extends StatefulWidget {
  const rotationTransition({super.key});

  @override
  State<rotationTransition> createState() => _rotationTransitionState();
}

class _rotationTransitionState extends State<rotationTransition> with SingleTickerProviderStateMixin {
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
         RotationTransition(turns: _controller,
           child: Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
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