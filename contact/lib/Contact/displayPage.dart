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

  void delete(int index) async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("phone");
    List<dynamic> delete = jsonDecode(res!);
    delete.removeAt(index);
    pref.setString("phone", jsonEncode(delete));
    display();
    Navigator.pushNamed(context, "/homePage");
  }

  void edit() {
    Navigator.pushNamed(context, "/editPage", arguments: index.toString());
  }

  void editDelete() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose any?",
              style: TextStyle(color: Colors.blue),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  delete(index!);
                },
                child: Text("Delete", style: TextStyle(color: Colors.blue)),
              ),
              TextButton(
                onPressed: () {
                  edit();
                },
                child: Text("Edit", style: TextStyle(color: Colors.blue)),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    index = int.parse((ModalRoute.of(context)!.settings.arguments as String));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  editDelete();
                },
                icon: Icon(Icons.more_horiz))
          ],
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
                        color: Colors.blue,
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
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            contact![index!]["lname"],
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      )
                    : Text("error")),
            SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: contact != null
                                ? Text(
                                    contact![index!]["phone"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text("error"),
                          ),
                          Text("Mobile | India"),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 25),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue),
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Message",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 15),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue),
                        child: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Video call",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(top: 15),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue),
                        child: Icon(
                          Icons.video_call,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Email Address"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: contact != null
                            ? Text(
                                contact![index!]["email"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            : Text("error"),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 25),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 20,
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
