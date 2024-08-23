import 'dart:convert';

import 'package:flutter/material.dart';

class Student1 extends StatefulWidget {
  const Student1({super.key});

  @override
  State<Student1> createState() => __Student1State();
}

class __Student1State extends State<Student1> {
  TextEditingController c1=TextEditingController();
   TextEditingController c2=TextEditingController();
    TextEditingController c3=TextEditingController();
    TextEditingController c4=TextEditingController();
     TextEditingController c5=TextEditingController();
      TextEditingController c6=TextEditingController();
     final Map<dynamic,dynamic>data={};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Center(
        child: Text("Students Registration",style: TextStyle(color: Colors.blue),)),
        backgroundColor: Colors.white,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             height: MediaQuery.of(context).size.height*.5,
             child: Image.asset("./images/2534028.jpg"),
           ),
           Expanded(
             child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*.5,
               child: ListView(
                 children: [
                  Text("FIRST NAME",style: TextStyle(color: Colors.blue),),
                   Container(
                   padding: EdgeInsets.only(top: 10,bottom: 10),
                     width: 300,
                     child: Expanded(
                       child: TextField(
                        controller: c1,
                          decoration: InputDecoration(
                                       hintText: "  First Name",
                                       hintStyle: TextStyle(color: Colors.blue[200]),
                                       enabled: true,
                                       border: InputBorder.none,
                                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                                         color: Colors.blue,
                                         width: 2
                                       )
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(
                                           color: Colors.blue
                                         )
                                       )
                                     ),
                       ),
                     ),
                   ),
                    Text("LAST NAME",style: TextStyle(color: Colors.blue),),
                    Container(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c2,
                      decoration: InputDecoration(
                                   hintText: "  Last Name",
                                   hintStyle: TextStyle(color: Colors.blue[200]),
                                   enabled: true,
                                   border: InputBorder.none,
                                   enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                                     color: Colors.blue,
                                     width: 2
                                   )
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Colors.blue
                                     )
                                   )
                                 ),
                   ),
                 ),
               ),
                Text("EMAIL",style: TextStyle(color: Colors.blue),),
                 Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c3,
                    keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                                   hintText: "  Email",
                                   hintStyle: TextStyle(color: Colors.blue[200]),
                                   enabled: true,
                                   border: InputBorder.none,
                                   enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                                     color: Colors.blue,
                                     width: 2
                                   )
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Colors.blue
                                     )
                                   )
                                 ),
                   ),
                 ),
               ),
                Text("PHONE",style: TextStyle(color: Colors.blue),),
                 Container(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c4,
                      decoration: InputDecoration(
                                   hintText: "  Phone",
                                   hintStyle: TextStyle(color: Colors.blue[200]),
                                   enabled: true,
                                   border: InputBorder.none,
                                   enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                                     color: Colors.blue,
                                     width: 2
                                   )
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Colors.blue
                                     )
                                   )
                                 ),
                   ),
                 ),
               ),
                Text("ADDRESS",style: TextStyle(color: Colors.blue),),
                  Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c5,
                      decoration: InputDecoration(
                                   hintText: "  Address",
                                   hintStyle: TextStyle(color: Colors.blue[200]),
                                   enabled: true,
                                   border: InputBorder.none,
                                   enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                                     color: Colors.blue,
                                     width: 2
                                   )
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Colors.blue
                                     )
                                   )
                                 ),
                   ),
                 ),
               ),
                Text("CITY",style: TextStyle(color: Colors.blue),),
                 Container(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c6,
                      decoration: InputDecoration(
                                   hintText: "  City",
                                   hintStyle: TextStyle(color: Colors.blue[200]),
                                   enabled: true,
                                   border: InputBorder.none,
                                   enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                                     color: Colors.blue,
                                     width: 2
                                   )
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Colors.blue
                                     )
                                   )
                                 ),
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               ElevatedButton(onPressed: (){
                setState(() {
                  data["First Name"]=c1.text;
                   data["Last Name"]=c2.text;
                    data["Email"]=c3.text;
                     data["Phone"]=c4.text;
                      data["Address"]=c5.text;
                       data["City"]=c6.text;
                });
                print(data);
                Navigator.pushNamed(context, "/id2",arguments: jsonEncode(data));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                ),
                
                
                 child: Text("SUBMIT"))
                 ],
               ),
             ),
           ),
          
         ]
                  )
        )

    );
  }
}