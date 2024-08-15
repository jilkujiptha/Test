

import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  const Todos({super.key});

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  @override
 
  List<dynamic>ls=[];
   TextEditingController _controller=TextEditingController();
  void generate(){
    setState(() {
      ls.add(_controller.text);
      print(ls);
    });
    _controller.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TODOS"),
        ),
      ),
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)  
                    )
                  ),
                )),
                SizedBox(width: 10),
                MaterialButton(onPressed: generate,
                padding: EdgeInsets.all(21),
                child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 15),),
                color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 10),
            Divider(),
            Text("TASKS",style: TextStyle(fontSize: 30),),
            Expanded(
              child: ListView.builder(
                itemCount: ls.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text(ls[index].toString()),
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),

                  );

            }))
          ],
        ),
      ), 
    );
  }
}