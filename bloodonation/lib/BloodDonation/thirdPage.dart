import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController email = TextEditingController();

  String? group;
  String? _isSelected;
  bool _isChecked = false;
  final List<String> groups = [
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "o+",
    "o-"
  ];
  void birthDate() {
    RegExp reg = RegExp(r'(\d{4})-(0\d||1[0-2])-([0-2]\d||3[0-1])$');
    reg.hasMatch(date.text)
        ? Navigator.pushNamed(context, "/secondPage")
        : showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  "Incorrect!",
                  style: TextStyle(color: Colors.red),
                ),
                content: Text("Please enter valid date"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel"))
                ],
              );
            });
  }

  void addData() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString("blood");
    try {
      List<dynamic> ls = jsonDecode(res!);
      ls.add({
        "name": name.text,
        "age": age.text,
        "email": email.text,
        "number": number.text,
        "date": date.text,
        "weight": weight.text
      });
      pref.setString("blood", jsonEncode(ls));
      print(ls);
    } catch (e) {
      List<dynamic> ls = [
        {
          "name": name.text,
          "age": age.text,
          "email": email.text,
          "number": number.text,
          "date": date.text,
          "weight": weight.text
        }
      ];
      pref.setString("blood", jsonEncode(ls));
      print(ls);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            "Donor Registration",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.red[900]),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Text("FULL NAME"),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.black),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Text("AGE"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                controller: age,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Age",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("EMAIL"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("MOBILE"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                controller: number,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("BLOOD GROUP"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 50,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(5, 5),
                          color: const Color.fromARGB(255, 250, 225, 223))
                    ]),
                child: Row(
                  children: [
                    Text(
                      group == null ? "Blood Group" : " $group",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Spacer(),
                    DropdownButton(
                        padding: EdgeInsets.only(right: 16),
                        underline: Container(
                          height: 0,
                        ),
                        items: groups.map((String Group) {
                          return DropdownMenuItem(
                            value: Group,
                            child: Text(Group),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            group = value;
                          });
                        }),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            // Text("DOB"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                keyboardType: TextInputType.datetime,
                controller: date,
                decoration: InputDecoration(
                    hintText: "DOB",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("GENDER"),
            // SizedBox(
            //   height: 10,
            // ),
            // Text("WEIGHT"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                controller: weight,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Weight",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GENDER",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MALE",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Radio(
                            activeColor: Colors.red,
                            value: "MALE",
                            groupValue: _isSelected,
                            onChanged: (String? value) {
                              setState(() {
                                _isSelected = value;
                              });
                            }),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Radio(
                            activeColor: Colors.red,
                            value: "FEMALE",
                            groupValue: _isSelected,
                            onChanged: (String? value) {
                              setState(() {
                                _isSelected = value;
                              });
                            }),
                        Text(
                          "OTHERS",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Radio(
                            activeColor: Colors.red,
                            value: "OTHERS",
                            groupValue: _isSelected,
                            onChanged: (String? value) {
                              setState(() {
                                _isSelected = value;
                              });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          }),
                      Text(
                        "I agree to Donate blood",
                        style: TextStyle(fontSize: 15, color: Colors.red[900]),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "CANCEL",
                      style: TextStyle(color: Colors.red[900]),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    addData();
                    setState(() {
                      birthDate();
                    });
                    // Navigator.pushNamed(context, "/secondPage");
                  },
                  child:
                      Text("SUBMIT", style: TextStyle(color: Colors.red[900])),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.grey[600]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
