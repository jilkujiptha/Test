import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/Provider/NumberListProvider.dart';
import 'package:stateprovider/Provider/page2.dart';

class Provider1 extends StatefulWidget {
  const Provider1({super.key});

  @override
  State<Provider1> createState() => _Provider1State();
}

class _Provider1State extends State<Provider1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(builder: (context,ListModel,child)=>Scaffold(
      appBar: AppBar(title: Center(child: Text("Setstate1")),
      actions: [
        IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Provider2()));
        }, icon: Icon(Icons.arrow_forward_ios))
      ],
      ),
      body: Column(
        children: [
          Text("Total Count is ${ListModel.numbers.length}"),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            itemCount: ListModel.numbers.length,
            itemBuilder: (context,index){
            return ListTile(
              title: Text("${ListModel.numbers[index]}"),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
          ListModel.addNumbers();
      },child: Icon(Icons.add),),
    ));
  }
}