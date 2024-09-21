import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class StudentId2 extends StatefulWidget {
  const StudentId2({super.key});

  @override
  State<StudentId2> createState() => _StudentId2State();
}

class _StudentId2State extends State<StudentId2> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();

  List<dynamic> ls = [];
  final _student = Hive.box("Student");
  void addData() {
    _student.put(1, "id");
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "REGISTRATION FORM",
            style: TextStyle(
                color: const Color.fromARGB(255, 4, 170, 156), fontSize: 25),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
              child: TextField(
                controller: c1,
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 170, 156)),
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
              child: TextField(
                controller: c2,
                decoration: InputDecoration(
                    hintText: "Age",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 170, 156)),
                    border: InputBorder.none),
              ),
            ),
            Text(
              "MARKS",
              style: TextStyle(
                  color: const Color.fromARGB(255, 4, 170, 156), fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
              child: TextField(
                controller: c3,
                decoration: InputDecoration(
                    hintText: "Physics",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 170, 156)),
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
              child: TextField(
                controller: c4,
                decoration: InputDecoration(
                    hintText: "Chemistry",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 170, 156)),
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
              child: TextField(
                controller: c5,
                decoration: InputDecoration(
                    hintText: "Maths",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 4, 170, 156)),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey)
                        ]),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 4, 170, 156),
                          ),
                        ))),
                Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey)
                        ]),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "id3");
                        },
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 4, 170, 156),
                          ),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
