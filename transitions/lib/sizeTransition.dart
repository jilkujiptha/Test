import 'package:flutter/material.dart';

class Sizetransition extends StatefulWidget {
  const Sizetransition({super.key});

  @override
  State<Sizetransition> createState() => _SizetransitionState();
}

class _SizetransitionState extends State<Sizetransition> 
with SingleTickerProviderStateMixin{
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
           SizeTransition(sizeFactor: _controller,
           axis: Axis.vertical,
           child: Container(
            width: 100,
            height: 100,
            color: Colors.black,
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