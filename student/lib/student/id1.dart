import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Student1 extends StatefulWidget {
  const Student1({super.key});

  @override
  State<Student1> createState() => _Student1State();
}

class _Student1State extends State<Student1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Center(
        child: Text("Contact List",style: TextStyle(fontSize: 30,color: Colors.blue),)),
        backgroundColor: Colors.white,
        ),
      body: Container(
         width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             height: MediaQuery.of(context).size.height*.6,
           ),
          
           ]
        )
      ),
      floatingActionButton: TextButton(onPressed: (){
        Navigator.pushNamed(context, "/id2");
      }, child: 
      Icon(Icons.add,
      color: Colors.white,
      size: 40,
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.all(20),
        shape: CircleBorder()

      ),
      ),
    );
  }
}