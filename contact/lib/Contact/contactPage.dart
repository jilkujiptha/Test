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
            title: Text(
              "Choose any?",
              style: TextStyle(color: Colors.blue),
            ),
            actions: [
              TextButton(
                onPressed: gallery,
                child: Text("Gallery", style: TextStyle(color: Colors.blue)),
              ),
              TextButton(
                onPressed: camera,
                child: Text("Camera", style: TextStyle(color: Colors.blue)),
              ),
            ],
          );
        });
  }

  void gallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
      } else {
        print("error!");
      }
    });
  }

  void camera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);

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
    try {
      List<dynamic> contact = jsonDecode(res!);
      contact.add({
        "fname": fname.text,
        "lname": lname.text,
        "email": email.text,
        "phone": phone.text,
        "photo": base64img
      });
      pref.setString("phone", jsonEncode(contact));
      print(contact);
    } catch (error) {
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
      print(contact);
    }
      Navigator.pushNamedAndRemoveUntil(context, "/homePage", (Route) => false);
    // Navigator.pushNamed(context, "/firstPage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "ADD CONTACT",
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          ElevatedButton(
            onPressed: () {
              saveData();
            },
            child: Text(
              "Save",
              style: TextStyle(color: Colors.blue),
            ),
            style: ElevatedButton.styleFrom(iconColor: Colors.white),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.all(40),
          children: [
            SizedBox(height: 50),
            GestureDetector(
              onTap: pickImg,
              child: Center(
                  child: ClipOval(
                      child: _image != null
                          ? Image.file(
                              _image!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          : Container(
                              width: 100,
                              height: 100,
                              color: Colors.blue,
                              child: Center(
                                  child: Icon(
                                Icons.camera_alt_outlined,
                                size: 50,
                                color: Colors.white,
                              )),
                            ))),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(246, 247, 246, 246),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(246, 247, 246, 246),
                    ),
                    child: TextField(
                      controller: fname,
                      decoration: InputDecoration(
                          hintText: "FirstName",
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(246, 247, 246, 246),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(246, 247, 246, 246),
                    ),
                    child: TextField(
                      controller: lname,
                      decoration: InputDecoration(
                          hintText: "SurName",
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(246, 247, 246, 246),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(246, 247, 246, 246),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,

                      controller: email,
                      decoration: InputDecoration(
                          hintText: "EmailAddress",
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(246, 247, 246, 246),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(246, 247, 246, 246),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,

                      controller: phone,
                      decoration: InputDecoration(
                          hintText: "PhoneNumber",
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
