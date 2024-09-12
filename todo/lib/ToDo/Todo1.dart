import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/ToDo/Todo3.dart';
import 'package:todo/ToDo/todo2.dart';
import 'package:todo/provider/numberListProvider.dart';

class ToDO1 extends StatefulWidget {
  const ToDO1({super.key});

  @override
  State<ToDO1> createState() => _ToDO1State();
}

class _ToDO1State extends State<ToDO1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context, TodoListModel, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 1, 204, 187),
                title: Center(
                    child: Text(
                  "ToDo List",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              body: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ToDo3()));
                            },
                            child: Text(
                              "EDIT",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 1, 204, 187)),
                            ),
                          )),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: TodoListModel.ls.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                bottom: 10, top: 10, left: 20, right: 20),
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width * .10,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 5, color: Colors.grey)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onLongPress: () {
                                   setState(() {
                                      TodoListModel.ls.removeAt(index);
                                   });
                                  },
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 1, 204, 187)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
              floatingActionButton: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ToDo2()));
                  },
                  child: Text(
                    "ADD",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 1, 204, 187),
                        fontSize: 20),
                  )),
            ));
  }
}
