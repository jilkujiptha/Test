import 'package:flutter/material.dart';
class ColomnWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage("./image/jip.jpeg"),
                  fit: BoxFit.cover,
                  ),
                  // color: const Color.fromARGB(255, 250, 239, 239),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(-5, -5),
                    ),
                    
                  ]
                ),
                margin: EdgeInsets.only(top: 60),
                height: 200,
                alignment: Alignment.bottomCenter,
            ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Jiptha MP",style: TextStyle(fontFamily: "edu",fontSize: 30),),
                ),
                Container(
                   height: 50,
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Flutter Developer",style: TextStyle(fontFamily: "edu",fontSize: 20),),
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: Divider(),

                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 221, 221) ,
                    borderRadius: BorderRadius.circular(10),
                     ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Row(children: [
                      Icon(
                      Icons.phone,
                      size: 30
                      ),
                       
                       Text("    +91 9567690614",style: TextStyle(fontFamily: "edu",fontSize: 20)
                      ),
                    ]
                      ,
                       ),
                       Text("Mobile Number",style: TextStyle(fontFamily: "edu"),),
                       ],
                ),
          ),
          SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(10),
                   height: 100,
                   width: 300,
                   decoration: BoxDecoration(
                   color: Color.fromARGB(255, 226, 221, 221) ,
                   borderRadius: BorderRadius.circular(10),
                   ),

                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                   Icon(
                    Icons.mail,
                      size: 30,
                      ),
                       Text("   mpjiptha@gmail.com",style: TextStyle(fontFamily: "edu",fontSize: 20),
                       ),
                      ],

                      ),
                      Text("E-mail Id",style: TextStyle(fontFamily: "edu"),),
                    ],
                   ),
                  )
                   
                     
                          ],      

             
                       ),
                       )
        
                
          
      ),

    );
  }
}