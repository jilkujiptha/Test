import 'package:flutter/material.dart';

class StudentId1 extends StatefulWidget {
  const StudentId1({super.key});

  @override
  State<StudentId1> createState() => _StudentId1State();
}

class _StudentId1State extends State<StudentId1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "id3");
            },
            child: Text(
              "CONTACT LIST",
              style: TextStyle(
                  color: const Color.fromARGB(255, 4, 170, 156), fontSize: 30),
            ),
          )),
    );
  }
}
