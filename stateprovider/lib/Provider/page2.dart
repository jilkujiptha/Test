import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/Provider/NumberListProvider.dart';

class Provider2 extends StatefulWidget {
  const Provider2({super.key});

  @override
  State<Provider2> createState() => _Provider2State();
}

class _Provider2State extends State<Provider2> {
 @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(builder: (context,ListModel,child)=>Scaffold(
      appBar: AppBar(title: Center(child: Text("Setstate1")),
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