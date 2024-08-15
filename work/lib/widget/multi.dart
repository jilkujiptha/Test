import 'package:flutter/material.dart';
class Multiplication extends StatefulWidget {
  const Multiplication({super.key});

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  TextEditingController _controller=TextEditingController();
  List ls=[];

  void generate(){
    print(_controller.text);
    var data =int.parse(_controller.text);
    setState(() {
      ls=[];
      for(var i=1;i<=10;i++){
        ls.add("${i}x${data}=${i*data}");
      }
    });
    _controller.clear();
    print(ls);
  }

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                 MaterialButton(onPressed: generate,
                 child: Text("Generate",style: TextStyle(color: Colors.white),),
                 color: Colors.blueGrey,
                 minWidth: 30,
                 height: 50,
                  ),
                     MaterialButton(onPressed: (){
                      setState(() {
                        ls.clear();
                      });
                     },
                     child: Icon(
                     Icons.delete,
                     size: 40,
                     color: Colors.blueGrey,
             ),
             ),
            
                ],
              ),
              SizedBox(height: 10),
              ListTile(
                title:  Expanded(
                 child: Container(
                  height: MediaQuery.of(context).size.height* .4,
                  width: 50,
                   child: ListView.builder(
                        itemCount: ls.length,
                        itemBuilder: (context,index){
                          return Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.topLeft,
                            child: Text(ls[index].toString()));
                         }
                      ),
                 ),
                ),
              ),
            
            ],
          ), 
        ),
      ),
    );
  }
}