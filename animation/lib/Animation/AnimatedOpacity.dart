import 'package:flutter/material.dart';

class AnimationOpacity1 extends StatefulWidget {
  const AnimationOpacity1({super.key});

  @override
  State<AnimationOpacity1> createState() => _AnimationOpacity1State();
}

class _AnimationOpacity1State extends State<AnimationOpacity1> {
 TextEditingController a=TextEditingController();
 TextEditingController b=TextEditingController();
   bool _isOpacity=false;
   double? c;

   void add(){
    setState(() {
      double x=double.parse(a.text);
      double y=double.parse(b.text);
      c=x+y;
      a.clear();
      b.clear();
    });
    print(c);
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: a,
              decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                )
              )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: b,
              decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                )
              ),
                 enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                )
              )
              ),
            ),
            SizedBox(height: 20,),
            AnimatedOpacity(opacity: _isOpacity?1:0, duration: Duration(milliseconds: 500),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 100,
          height: 100,
          color: Colors.white,
        ),
      ),
      ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _isOpacity=! _isOpacity;
        });
      },
      child: Icon(Icons.switch_access_shortcut),
      )
    );
  }
}