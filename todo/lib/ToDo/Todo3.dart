import 'package:flutter/material.dart';

class ToDo3 extends StatefulWidget {
  const ToDo3({super.key});

  @override
  State<ToDo3> createState() => _ToDo3State();
}

class _ToDo3State extends State<ToDo3> {
  TextEditingController add = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 204, 187),
        title: Center(
            child: Text(
          "Edit Tasks",
          style: TextStyle(color: Colors.white),
        )),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
                child: TextField(
                  controller: add,
                  decoration: InputDecoration(
                      hintText: "Edit Tasks",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 1, 204, 187)),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)]),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "EDIT",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 1, 204, 187)),
                    )),
              )
            ],
          ),
        ],
      ),
    );;
  }
}