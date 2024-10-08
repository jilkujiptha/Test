

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class StudentId3 extends StatefulWidget {
  const StudentId3({super.key});

  @override
  State<StudentId3> createState() => _StudentId3State();
}

class _StudentId3State extends State<StudentId3> {
  List<dynamic> ls=[];
  final _student = Hive.box("Student");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  void readData(){
  if(_student.get("key")!=null){
     ls=_student.get("key"); 
  }
  else{
   print(ls);
  }
  }

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
              itemCount:ls.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
                  padding: EdgeInsets.all(15),
                  width: 50,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.grey)
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ls[index]["name"],
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                         ),
                          SizedBox(width:10 ,),
                          Row(
                            children: [
                              Text("Age : ",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),

                              ),
                         Text(ls[index]["age"]
                          ),
                          Spacer(),
                          Column(
                            children: [
                          Text("MARKS",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                          
                        Row(
                          children: [
                            Text("Physics :"),
                            Text(ls[index]["marks"]["physics"])
                          ],
                        ),
                        Row(
                          children: [
                            Text("Chemistry :"),
                            Text(ls[index]["marks"]["chemistry"])

                          ],
                        ),
                        Row(
                          children: [
                            Text("Maths :"),
                            Text(ls[index]["marks"]["maths"])

                          ],
                        ),
                        Row(
                          children: [
                            Text("TOTAL :",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: const Color.fromARGB(255, 4, 170, 156),),
                            ),
                            Text(
                        "${int.parse(ls[index]["marks"]["physics"])+int.parse(ls[index]["marks"]["chemistry"])+int.parse(ls[index]["marks"]["maths"])}")
                          ],
                        ),

                          ],
                          ),

                          ],
                        ),
                        
                      ],
                    ),
                );
              })
            ),
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
