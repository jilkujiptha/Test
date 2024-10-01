import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ExpensePage1 extends StatefulWidget {
  const ExpensePage1({super.key});

  @override
  State<ExpensePage1> createState() => _ExpensePage1State();
}

class _ExpensePage1State extends State<ExpensePage1> {
  TextEditingController income = TextEditingController();
  TextEditingController money = TextEditingController();
  final _track = Hive.box("myBox");
  int value = 0;
  double exp = 0;
  double inc = 0;
  double sum = 0;
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
        _track.put("key", value.toString());
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
    if (_track.get("3") != null) {
      balanceData();
    } else {
      null;
    }
  }

  void balanceData() {
    if (_track.get("key") != null || _track.get("3") != null) {
      exp = double.parse(_track.get("3"));
      inc = double.parse(_track.get("key"));
      sum = inc - exp;
    } else {
      print("null");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(
            child: Text(
          "EXPENSE TRACKER",
          style: TextStyle(color: Colors.grey),
        )),
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "track2");
              },
              icon: Icon(
                Icons.add,
                color: Colors.grey,
                size: 40,
              ))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Colors.grey[900],
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          margin: EdgeInsets.only(left: 70, right: 50, top: 20),
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[900],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Expense",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    width: 20,
                  ),
                  Text("₹",
                      style: TextStyle(fontSize: 50, color: Colors.white)),
                  SizedBox(
                    width: 15,
                  ),
                  _track.get("3") == null
                      ? Text(
                          "",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        )
                      : Text(
                          _track.get("3"),
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                ],
              ),
              Row(
                children: [
                  Text("Income",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    width: 10,
                  ),
                  Text("₹",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  SizedBox(
                    width: 10,
                  ),
                  _track.get("key") == null
                      ? Text("",
                          style: TextStyle(color: Colors.white, fontSize: 20))
                      : Text(_track.get("key"),
                          style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text("Balance",
                          style: TextStyle(color: Colors.white, fontSize: 25))),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "₹ ${sum}",
                    style: TextStyle(fontSize: 25, color: Colors.white),
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
              style: TextStyle(color: Colors.grey[900], fontSize: 20),
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
                      EdgeInsets.only(bottom: 10, top: 10, left: 20, right: 20),
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[900],
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: const Color.fromARGB(108, 158, 158, 158))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ls[index]["food"],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            ls[index]["paid"],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            ls[index]["date"],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            ls[index]["time"],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "₹",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ls[index]["money"],
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                );
              }),
        )
      ]),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "EXPENSE TRACKER",
                  style: TextStyle(color: Colors.grey[900]),
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
                color: Colors.grey[900],
              ),
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.grey,
                          title: Text(
                            "ADD INCOME",
                            style: TextStyle(color: Colors.grey),
                          ),
                          content: Container(
                            width: 260,
                            height: 40,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[900],
                            ),
                            child: TextField(
                              controller: income,
                              decoration: InputDecoration(
                                  hintText: "Add Income (cash)",
                                  hintStyle: TextStyle(color: Colors.grey),
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
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[900],
                                  ),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.grey),
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[900],
                                  ),
                                  child: TextButton(
                                      onPressed: addIncome,
                                      child: Text(
                                        "Save",
                                        style: TextStyle(color: Colors.grey),
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
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[900]),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "track3");
                  },
                  child: Text(
                    "STATEMENTS",
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
