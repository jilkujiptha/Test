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
      _image = base64Decode(contact![index!]["photo"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    index = int.parse((ModalRoute.of(context)!.settings.arguments as String));
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "CONTACT LIST",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            ClipOval(
                child: _image != null
                    ? Image.memory(
                        _image!,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: 15,
                        height: 150,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "image is not available",
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: contact != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            contact![index!]["fname"],
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            contact![index!]["lname"],
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    : Text("error")),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.message,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.video_call,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
