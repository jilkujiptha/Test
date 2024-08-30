import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  File? _image;
  final ImagePicker _picker = ImagePicker();
  void pickImg() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Gallery"),
            actions: [TextButton(onPressed: gallery, child: Text("OK"))],
          );
        });
  }

  void gallery() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("phone");
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("error!");
      }
    });
  }

    void saveData() async {
      final pref = await SharedPreferences.getInstance();
      final res = pref.getString("phone");
      final bytes = await _image!.readAsBytes();
      final base64img = base64Encode(bytes);
        try{
          List<dynamic> contact = jsonDecode(res!);
        contact.add({
          "fname": fname.text,
          "lname": lname.text,
          "email": email.text,
          "phone": phone.text,
          "photo": base64img
        });
        pref.setString("phone", jsonEncode(contact));
        }catch(error){
          List<dynamic> contact = [
          {
            "fname": fname.text,
            "lname": lname.text,
            "email": email.text,
            "phone": phone.text,
            "photo": base64img
          }
        ];
        pref.setString("phone", jsonEncode(contact));
        }
        Navigator.pushNamed(context, "/firstPage");
        
      }   
      
    
    
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text(
          "ADD CONTACT",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.all(70),
          children: [
            SizedBox(height: 50),
            Center(
                child: ClipOval(
                    child: _image != null
                        ? Image.file(
                            _image!,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            width: 150,
                            height: 150,
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                "image is not available",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          ))),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                onPressed: pickImg,
                child: Text("Add Photo"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.black),
              ),
            ),
            SizedBox(height: 100),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "FirstName",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "SurName",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "EmailAddress",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "PhoneNumber",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          saveData();
          Navigator.pushNamed(context, "/firstPage");
        },
        child: Icon(
          Icons.add,
          color: Colors.blueGrey,
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.black, padding: EdgeInsets.all(20)),
      ),
    );
  }
}