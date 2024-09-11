import 'package:flutter/material.dart';
import 'package:provider/Provider/page2.dart';

class Provider1 extends StatefulWidget {
  const Provider1({super.key});

  @override
  State<Provider1> createState() => _Provider1State();
}

class _Provider1State extends State<Provider1> {
  List<int>numbers=[1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Setstate1")),
      actions: [
        IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Provider2(numbers:numbers)));
        }, icon: Icon(Icons.arrow_forward_ios))
      ],
      ),
      body: Column(
        children: [
          Text("Total Count is ${numbers.length}"),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context,index){
            return ListTile(
              title: Text("${numbers[index]}"),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          numbers.add(numbers.last+1);
        });
      },child: Icon(Icons.add),),
    );
  }
}