import 'package:flutter/material.dart';

class StudentId3 extends StatefulWidget {
  const StudentId3({super.key});

  @override
  State<StudentId3> createState() => _StudentId3State();
}

class _StudentId3State extends State<StudentId3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "DETAILS",
            style: TextStyle(
                color: const Color.fromARGB(255, 4, 170, 156), fontSize: 25),
          ),
        ),
      ),
      body: Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
                  padding: EdgeInsets.all(15),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.grey)
                      ]),
                );
              })),
      floatingActionButton: Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "id2");
              },
              child: Text(
                "ADD",
                style: TextStyle(
                  color: const Color.fromARGB(255, 4, 170, 156),
                ),
              ))),
    );
  }
}
