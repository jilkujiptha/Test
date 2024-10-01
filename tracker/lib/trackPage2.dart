import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class ExpensePage2 extends StatefulWidget {
  const ExpensePage2({super.key});

  @override
  State<ExpensePage2> createState() => _ExpensePage2State();
}

class _ExpensePage2State extends State<ExpensePage2> {
  TextEditingController money = TextEditingController();
  TextEditingController paid = TextEditingController();
  TextEditingController food = TextEditingController();
  List<dynamic> ls = [];
  int value = 0;
  final _track = Hive.box("myBox");
  DateTime date = DateTime.now();
  final ImagePicker _picker = ImagePicker();
  String? image;
  File? _image;

  void addData() async {
    if (_image != null) {
      final bytes = await _image!.readAsBytes();
      final base64img = base64Encode(bytes);
      image = base64img;
    }
    if (_track.get("1") != null) {
      ls = _track.get("1");

      ls.add({
        "money": money.text,
        "paid": paid.text,
        "food": food.text,
        "IMAGE": image,
        "date":
            "${date.day.toString().padLeft(2, "0")}-${date.month.toString().padLeft(2, "0")}-${date.year.toString().padLeft(2, "0")}",
        "time":
            "${date.hour.toString().padLeft(2, "0")}:${date.minute.toString().padLeft(2, "0")}"
      });
      _track.put("1", ls);
    } else {
      ls = [
        {
          "money": money.text,
          "paid": paid.text,
          "food": food.text,
          "IMAGE": image,
          "date":
              "${date.day.toString().padLeft(2, "0")}-${date.month.toString().padLeft(2, "0")}-${date.year.toString().padLeft(2, "0")}",
          "time":
              "${date.hour.toString().padLeft(2, "0")}:${date.minute.toString().padLeft(2, "0")}"
        }
      ];
      print(_track.get("1"));
      _track.put("1", ls);
    }
    addMoney();
  }

  void addMoney() {
    setState(() {
      if (_track.get("3") != null) {
        value = int.parse(_track.get("3"));
        value = value + int.parse(money.text);
        _track.put("3", value.toString());
      } else {
        _track.put("3", money.text);
      }
    });
  }

  void pickImage() {
    if (_image == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.grey,
              title: Text(
                "ADD BILL",
                style: TextStyle(color: Colors.grey[900]),
              ),
              actions: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[900],
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.grey),
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[900],
                      ),
                      child: TextButton(
                          onPressed: gallery,
                          child: Text(
                            "Gallery",
                            style: TextStyle(color: Colors.grey),
                          )),
                    )
                  ],
                )
              ],
            );
          });
    }
  }

  void gallery() async {
    final PickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
        Navigator.pop(context);
      } else {
        print("null");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Add New Expenses",
          style:
              TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
        ),
      ),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[900],
                ),
                child: Center(
                    child: Text(
                  "EXPENSE",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 40,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[700],
              ),
              child: TextField(
                controller: money,
                decoration: InputDecoration(
                    hintText: "Spend Money",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 40,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[700],
              ),
              child: TextField(
                controller: paid,
                decoration: InputDecoration(
                    hintText: "Paid to (name or place)",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 40,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[700],
              ),
              child: TextField(
                controller: food,
                decoration: InputDecoration(
                    hintText: "Item",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      pickImage();
                    },
                    child: _image != null
                        ? Image.file(
                            _image!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Center(
                            child: Column(
                            children: [
                              Text(
                                "BILL",
                                style: TextStyle(
                                    color: Colors.grey[900], fontSize: 30),
                              ),
                            ],
                          )))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    // margin: EdgeInsets.only(left: 50, right: 50),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[900],
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "CANCEL",
                          style: TextStyle(color: Colors.white),
                        ))),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                  ),
                  child: TextButton(
                      onPressed: () {
                        addData();
                        Navigator.pushNamed(context, "track1");
                      },
                      child: Text(
                        "SAVE",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
