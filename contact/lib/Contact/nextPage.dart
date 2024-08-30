import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  List<dynamic> contact = [];
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
        print(contact);
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text(
          "CONTACT",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: contact.length,
          itemBuilder: (context,index){
            return ListTile(
            onTap: (){
              Navigator.pushNamed(context, "//displayPage",arguments: index.toString());
            },
             title: Text(contact[index]["fname"]),
              trailing: Icon(Icons.more_vert,
              color: Colors.black,),
              );
            },
          ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/firstPage");
        },
        child: Text(
          "ADD",
          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.black, padding: EdgeInsets.all(20)),
      ),
    );
  }
}