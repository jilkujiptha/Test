import 'package:flutter/material.dart';

class ExpensePage2 extends StatefulWidget {
  const ExpensePage2({super.key});

  @override
  State<ExpensePage2> createState() => _ExpensePage2State();
}

class _ExpensePage2State extends State<ExpensePage2> {
  TextEditingController money=TextEditingController();
  TextEditingController date=TextEditingController();
  TextEditingController paid=TextEditingController();
  TextEditingController shop=TextEditingController();
  TextEditingController bill=TextEditingController();

  final List<String>add =[
    "Add Bill"
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        title: Text("Add New Expenses",style: TextStyle(
          color:  const Color.fromARGB(255, 235, 184, 19),fontWeight: FontWeight.bold
        ),),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50,top: 50),
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                  color: const Color.fromARGB(255, 235, 184, 19),
                  ),
                  child: Center(child: Text("EXPENSE",
                  style: TextStyle(color: Colors.white),)),
               ), 
               Container(
                margin: EdgeInsets.only(right: 20,top: 50),
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                  color:  const Color.fromARGB(255, 243, 239, 203)
                  ),
                   child: Center(child: Text("INCOME",
                   style: TextStyle(color: const Color.fromARGB(255, 235, 184, 19),fontWeight: FontWeight.bold),)),
               ),
            ],
          ),
          SizedBox(height: 30,),
           Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 243, 239, 203),
            ),
            child: TextField(
              controller: money,
              decoration: InputDecoration(
              hintText: "Spend Money",
              hintStyle: TextStyle(
             color: const Color.fromARGB(255, 235, 184, 19),fontWeight: FontWeight.bold),
            border: InputBorder.none),
             ),
           ),  
           SizedBox(height: 30,),
           Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 243, 239, 203),
            ),
            child: TextField(
              controller: date,
              decoration: InputDecoration(
              hintText: "Date",
              hintStyle: TextStyle(
             color: const Color.fromARGB(255, 235, 184, 19),fontWeight: FontWeight.bold),
            border: InputBorder.none,
            ),
          ),
       ), 
        SizedBox(height: 30,),
           Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 243, 239, 203),
            ),
            child: TextField(
              controller: paid,
              decoration: InputDecoration(
              hintText: "Paid to (name or place)",
              hintStyle: TextStyle(
             color: Colors.grey,fontWeight: FontWeight.bold),
            border: InputBorder.none),
             ),
           ),
           SizedBox(height: 30,),
            Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 243, 239, 203),
            ),
            child: TextField(
              controller: shop,
              decoration: InputDecoration(
              hintText: "Shop",
              hintStyle: TextStyle(
             color: const Color.fromARGB(255, 235, 184, 19),fontWeight: FontWeight.bold),
            border: InputBorder.none,
            ),
          ),
       ), 
           SizedBox(height: 30,), 
             Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 243, 239, 203),
            ),
            child: TextField(
              controller: shop,
              decoration: InputDecoration(
              hintText: "Bill",
              hintStyle: TextStyle(
             color: const Color.fromARGB(255, 235, 184, 19),fontWeight: FontWeight.bold),
            border: InputBorder.none,
            ),
          ),
       ), 
           SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 50,right: 50),
                width: 150,
                height: 40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                  color:
                  const Color.fromARGB(255, 235, 184, 19),
                ),
                child: TextButton(onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Text("CANCEL",style: TextStyle(color: Colors.white),))),
                Container(
                width: 150,
                height: 40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                  color:
                  const Color.fromARGB(255, 235, 184, 19),
                ),
                  child: TextButton(onPressed: (){}, 
                  child:  Text("SAVE",style: TextStyle(color: Colors.white),)),
                )
            ],
          )
        ],
      ),
    );
  }
}
