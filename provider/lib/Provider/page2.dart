import 'package:flutter/material.dart';

class Provider2 extends StatefulWidget {
  final numbers;
  const Provider2({super.key,required this.numbers});

  @override
  State<Provider2> createState() => _Provider2State();
}

class _Provider2State extends State<Provider2> {
  List<int>numbers=[1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("setstate2"),
      ),
      body: Column(
        children: [
          Text("Total Count is ${widget.numbers.length}"),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            itemCount: widget.numbers.length,
            itemBuilder: (context,index){
            return ListTile(
              title: Text("${widget.numbers[index]}"),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          widget.numbers.add(widget.numbers.last+1);
        });
      },child: Icon(Icons.add),),
    );
  }
}