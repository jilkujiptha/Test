import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body:Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 231, 118, 156),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                   width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*.7,
                 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("./images/jip2.jpeg",
                  fit: BoxFit.cover,
                  ),
                  ),
                   margin: EdgeInsets.all(30),  
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: 2,
                      offset: Offset(5, 5),
                    )]
                   ),
                 ),
                 Container(
                  width: 300,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("Name :Jiptha MP",style: TextStyle(fontFamily: "edu",fontSize: 20),),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 231, 112, 152),
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    )]
                   ) ,
                 ),
                 Container(
                  width: 300,
                  height: 40,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Dep :Flutter Developer",style: TextStyle(fontFamily: "edu",fontSize: 20),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 240, 125, 163),
                     boxShadow: [BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    )]
                  ),
                 
                 )

            ],
          ),
        ),
        ),
       
    );

  }
}
