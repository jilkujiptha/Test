import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ExpensePage1 extends StatefulWidget {
  const ExpensePage1({super.key});

  @override
  State<ExpensePage1> createState() => _ExpensePage1State();
}

class _ExpensePage1State extends State<ExpensePage1> {
// final _track=Hive.box("Track");
// int value=0;

// void addIncome(){
// if(_track.get("key")==null){
// int _track=int.parse()
// }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 235, 184, 19),
        title: Center(
            child: Text(
          "EXPENSE TRACKER",
          style: TextStyle(color: Colors.white),
        )),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "track2");
          }, icon: Icon(Icons.add,
          color: Colors.white,
          size: 40,
          ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 50,
            color:  const Color.fromARGB(255, 235, 184, 19),
          ),
          SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.only(left: 70,right: 50,top: 20),
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
                     Text("₹",style: TextStyle(fontSize: 50,color: Colors.yellow[100]),),
                     SizedBox(width: 20,),
                     Text("Spent Money",style: TextStyle(color: Colors.yellow[100],fontSize: 20)),
                   ],
                 ),
                 Row(
                   children: [
                     Text("Income",style: TextStyle(color: Colors.yellow[100])),
                     SizedBox(width: 10,),
                     Text("₹",style: TextStyle(fontSize: 25,color: Colors.yellow[100]),),
                   ],
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Center(child: Text("Balance",style: TextStyle(color: Colors.yellow[100],fontSize: 25))),
                     SizedBox(width: 10,),
                     Text("₹",style: TextStyle(fontSize: 25,color: Colors.yellow[100]),),
                   ],
                 ),
               ],
             ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(top: 20,left: 50),
            child: Text("View All Expenses",
            style: TextStyle(color: const Color.fromARGB(255, 235, 184, 19),fontSize: 20),)),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
              return Container(
                 margin:
                      EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[50],
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.grey)
                      ]),
              );
            }),
          )
        ]
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow[100],
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "EXPENSE TRACKER",
                  style: TextStyle(color: const Color.fromARGB(255, 235, 184, 19)),
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
                            style: TextStyle(color:  const Color.fromARGB(255, 235, 184, 19)),
                          ),
                          content: Container(
                            width: 260,
                            height: 40,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:  const Color.fromARGB(255, 235, 184, 19),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Add Income (cash)",
                                  hintStyle: TextStyle(
                                      color:    const Color.fromARGB(255, 243, 239, 203),),
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
                                        style: TextStyle(color:  const Color.fromARGB(255, 243, 239, 203)),
                                      )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 235, 184, 19),
                                  ),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Save",
                                        style: TextStyle(color:  const Color.fromARGB(255, 243, 239, 203)),
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
                  style: TextStyle(color: const Color.fromARGB(255, 243, 239, 203)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:   const Color.fromARGB(255, 235, 184, 19)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "STATEMENTS",
                    style: TextStyle(color:const Color.fromARGB(255, 243, 239, 203)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
