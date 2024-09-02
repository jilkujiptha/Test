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
  Uint8List? _image;
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "CONTACT",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/firstPage");
              },
              icon: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              )),
        ],
        leading: Icon(Icons.menu),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: contact.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/displayPage",
                    arguments: index.toString());
              },
              title: Row(
                children: [
                  Text(
                    contact[index]["fname"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    contact[index]["lname"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              subtitle: Text(
                contact[index]["phone"],
                style: TextStyle(color: Colors.black),
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.memory(
                  _image = base64Decode(contact[index]["photo"]),
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
