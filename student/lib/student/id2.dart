import 'dart:convert';

import 'package:flutter/material.dart';

class Student2 extends StatefulWidget {
  const Student2({super.key});

  @override
  State<Student2> createState() => __Student2State();
}

class __Student2State extends State<Student2> {
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
        child: Text("Students Contact List",style: TextStyle(color: Colors.blue),)),
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
                Text("ROLL NUMBER",style: TextStyle(color: Colors.blue),),
                 Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c3,
                    keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                                   hintText: "  Roll Number ",
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
                Text("MARK 1",style: TextStyle(color: Colors.blue),),
                 Container(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c4,
                      decoration: InputDecoration(
                                   hintText: "  Mark 1",
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
                Text("MARK 2",style: TextStyle(color: Colors.blue),),
                  Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c5,
                      decoration: InputDecoration(
                                   hintText: "  Mark 2",
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
                Text("MARK 3",style: TextStyle(color: Colors.blue),),
                 Container(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
                 width: 300,
                 child: Expanded(
                   child: TextField(
                    controller: c6,
                      decoration: InputDecoration(
                                   hintText: "  Mark 3",
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
                    data["Roll Number"]=c3.text;
                     data["Mark 1"]=c4.text;
                      data["Mark 2"]=c5.text;
                       data["Mark 3"]=c6.text;
                });
                print(data);
                Navigator.pushNamed(context, "/id3",arguments: jsonEncode(data));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                   ),
                    child: Text("SUBMIT")
                    )
                 ],
               ),
             ),
           ),
        ],
      ),
    )
  );
}
}