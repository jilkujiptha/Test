import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ExpensePage1 extends StatefulWidget {
  const ExpensePage1({super.key});

  @override
  State<ExpensePage1> createState() => _ExpensePage1State();
}

class _ExpensePage1State extends State<ExpensePage1> {
  TextEditingController income = TextEditingController();
  final _track = Hive.box("myBox");
  int value = 0;
  List<dynamic> ls = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  void addIncome() {
    setState(() {
      if (_track.get("key") != null) {
        value = int.parse(_track.get("key"));
        value = value + int.parse(income.text);
      } else {
        _track.put("key", income.text);
      }
      Navigator.pop(context);
    });
  }

  void readData() {
    if (_track.get("1") != null) {
      ls = _track.get("1");
    } else {
      print(ls);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 184, 19),
        title: Center(
            child: Text(
          "EXPENSE TRACKER",
          style: TextStyle(color: Colors.white),
        )),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "track2");
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: const Color.fromARGB(255, 235, 184, 19),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          margin: EdgeInsets.only(left: 70, right: 50, top: 20),
          padding: EdgeInsets.all(20),
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(255, 235, 184, 19),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "₹",
                    style: TextStyle(fontSize: 50, color: Colors.yellow[100]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Spent Money",
                      style:
                          TextStyle(color: Colors.yellow[100], fontSize: 20)),
                ],
              ),
              Row(
                children: [
                  Text("Income", style: TextStyle(color: Colors.yellow[100])),
                  SizedBox(
                    width: 10,
                  ),
                  _track.get("key") == null
                      ? Text("₹",
                          style: TextStyle(
                              color: Colors.yellow[100], fontSize: 20))
                      : Text(_track.get("key"),
                          style: TextStyle(
                              color: Colors.yellow[100], fontSize: 20))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text("Balance",
                          style: TextStyle(
                              color: Colors.yellow[100], fontSize: 25))),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "₹",
                    style: TextStyle(fontSize: 25, color: Colors.yellow[100]),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            margin: EdgeInsets.only(top: 20, left: 50),
            child: Text(
              "View All Expenses",
              style: TextStyle(
                  color: const Color.fromARGB(255, 235, 184, 19), fontSize: 20),
            )),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: ls.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[50],
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.grey)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ls[index]["food"],
                        style: TextStyle(
                            color: const Color.fromARGB(255, 235, 184, 19),
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        ls[index]["paid"],
                        style: TextStyle(
                            color: const Color.fromARGB(255, 235, 184, 19),
                            fontSize: 15),
                      ),
                    ],
                  ),
                );
              }),
        )
      ]),
      drawer: Drawer(
        backgroundColor: Colors.yellow[100],
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "EXPENSE TRACKER",
                  style:
                      TextStyle(color: const Color.fromARGB(255, 235, 184, 19)),
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
                color: const Color.fromARGB(255, 235, 184, 19),
              ),
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 239, 203),
                          title: Text(
                            "ADD INCOME",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 235, 184, 19)),
                          ),
                          content: Container(
                            width: 260,
                            height: 40,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 235, 184, 19),
                            ),
                            child: TextField(
                              controller: income,
                              decoration: InputDecoration(
                                  hintText: "Add Income (cash)",
                                  hintStyle: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 243, 239, 203),
                                  ),
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
                                        const Color.fromARGB(255, 235, 184, 19),
                                  ),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 243, 239, 203)),
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 235, 184, 19),
                                  ),
                                  child: TextButton(
                                      onPressed: addIncome,
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 243, 239, 203)),
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
                  style: TextStyle(
                      color: const Color.fromARGB(255, 243, 239, 203)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 235, 184, 19)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "STATEMENTS",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 243, 239, 203)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
