import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  Uint8List? _image;
  int? index;
  List<dynamic>? contact;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    display();
  }
   void display() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("phone");
    setState(() {
      contact = jsonDecode(res!);
     _image=base64Decode(contact![index!]["photo"]);
    });
  
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          "CONTACTS LIST",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ClipOval(
              child: _image!=null?
              Image.memory(_image!,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              ):
             Container(
              width: 15,
              height: 150,
              color: Colors.black,
              child: Center(
              child: Text(
              "image is not available",
              style: TextStyle(color: Colors.blueGrey),
           ),
         ),
       )
     ),
     Divider(),
     Row(
      children: [
        Text("Name"),
        Text(contact![index!]["fname"]),
      ],
     )
   ]
  ), 
)
      
    );
  }
}