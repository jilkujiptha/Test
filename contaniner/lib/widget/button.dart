import 'package:flutter/material.dart';
class ElivatedButton extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, 
              child: Text("Elivated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
              ),
              ),
              SizedBox(height: 30),
              TextButton(onPressed: (){}, child:Text("Text Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 20,
                shadowColor: Colors.blue,
              ),
              ),
              SizedBox(height: 30),
              OutlinedButton(onPressed: (){}, child: Text("Outline Button"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue[500],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 20,
                shadowColor: Colors.black,
              ),
              ),
              SizedBox(height: 30),
              IconButton(onPressed: (){}, 
              icon: Icon(
                Icons.delete,
                color: Colors.blueGrey,
                size: 50,

              ),
              padding: EdgeInsets.all(20),
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),

                ),
                highlightColor: Colors.black,
              ),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}