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
        backgroundColor: const Color.fromARGB(255, 86, 17, 126),
        title: Center(child: Text("EXPENSE TRACKER",style: TextStyle(color: Colors.white),)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50,
        color: const Color.fromARGB(255, 86, 17, 126),
          ),
          drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 117, 93, 155),
            child: ListView(
              children: [
               DrawerHeader(
                child: Center(child: Text("EXPENSE TRACKER",style: TextStyle(color: Colors.white),),
                ),  
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 50,right: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 86, 5178, 126),
                ),
                child: TextButton(onPressed: (){
                  showDialog(context: context, builder: builder)
                }, 
                child: Text("ADD INCOME",style: TextStyle(color: Colors.white),
              ),
             ),
           ),
           Container(
              margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 79, 58, 112),
                ),
             child: TextButton(onPressed: (){},
              child: Text("STATEMENTS",style: TextStyle(color: Colors.white),)),
           )
          ],
        ),
      ),
    );
  }
}