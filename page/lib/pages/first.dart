import 'package:flutter/material.dart';
import 'package:page/pages/second.dart';
import 'package:page/pages/third.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("WELCOME TO SIGNUP",style: TextStyle(color: Colors.blue),)),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset("./images/4957136.jpg")
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 15, 137, 236),
              foregroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(80, 25, 80, 25)
            ),
            child: Stack(
              children: [
            Container(
                child: Text("LOGIN")),
              ]
            )
            ),
            SizedBox(height: 10,),
             ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Third()));
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor:const Color.fromARGB(255, 109, 162, 223),
              foregroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(80, 25, 80, 25)
            ),
            child: Container(
              child: Text("SIGNUP"))
            ),
          ],
        ),
      ),
    
    );


  }
}