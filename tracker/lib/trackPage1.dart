import 'package:flutter/material.dart';

class ExpensePage1 extends StatefulWidget {
  const ExpensePage1({super.key});

  @override
  State<ExpensePage1> createState() => _ExpensePage1State();
}

class _ExpensePage1State extends State<ExpensePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 79, 58, 112),
        title: Center(
            child: Text(
          "EXPENSE TRACKER",
          style: TextStyle(color: Colors.white),
        )),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50,
        color: const Color.fromARGB(255, 79, 58, 112),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 117, 93, 155),
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "EXPENSE TRACKER",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 79, 58, 112),
              ),
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 117, 93, 155),
                          title: Text(
                            "ADD INCOME",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            width: 260,
                            height: 40,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 79, 58, 112),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Add Income",
                                  hintStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 117, 93, 155)),
                                  border: InputBorder.none),
                            ),
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
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 79, 58, 112),
                                  ),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 79, 58, 112),
                                  ),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Save",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            )
                          ],
                        );
                      });
                },
                child: Text(
                  "ADD INCOME",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 79, 58, 112),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "STATEMENTS",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
