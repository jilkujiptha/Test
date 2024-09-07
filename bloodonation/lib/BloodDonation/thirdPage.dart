import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController date = TextEditingController();
  String? group;
  String? _isSelected;
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
    RegExp reg = RegExp(r'([0-2]\d||3[0-1])-(0\d||1[0-2])-(\d{4})$');
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
                        blurRadius: 5, offset: Offset(5, 5), color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
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
                        blurRadius: 5, offset: Offset(5, 5), color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
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
                        blurRadius: 5, offset: Offset(5, 5), color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
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
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Spacer(),
                    DropdownButton(
                        padding: EdgeInsets.only(right: 16),
                        icon: Icon(
                          Icons.arrow_circle_down_outlined,
                          size: 20,
                          color: Colors.grey,
                        ),
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
                        blurRadius: 5, offset: Offset(5, 5), color: const Color.fromARGB(255, 250, 225, 223))
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
                        blurRadius: 5, offset: Offset(5, 5), color: const Color.fromARGB(255, 250, 225, 223))
                  ]),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Weight",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GENDER",
                    style: TextStyle(color: Colors.grey),
                  ),
                  RadioListTile(
                      title: Text("MALE"),
                      value: "MALE",
                      groupValue: _isSelected,
                      onChanged: (String? value) {
                        setState(() {
                          _isSelected = value;
                        });
                      }),
                  RadioListTile(
                      title: Text("FEMALE"),
                      value: "FEMALE",
                      groupValue: _isSelected,
                      onChanged: (String? value) {
                        setState(() {
                          _isSelected = value;
                        });
                      }),
                  RadioListTile(
                      title: Text("OTHERS"),
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
                    setState(() {
                      birthDate();
                    });
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
