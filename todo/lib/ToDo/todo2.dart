import 'package:flutter/material.dart';

class ToDo2 extends StatefulWidget {
  const ToDo2({super.key});

  @override
  State<ToDo2> createState() => _ToDo2State();
}

class _ToDo2State extends State<ToDo2> {
  TextEditingController add = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 204, 187),
        title: Center(
            child: Text(
          "Add Tasks",
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
                      hintText: "Add Tasks",
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
                    onPressed: () {
                    },
                    child: Text(
                      "ADD",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 1, 204, 187)),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
