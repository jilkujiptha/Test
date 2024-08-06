import 'package:flutter/material.dart';
class ListviewbuilderWidget extends StatelessWidget{
  final List<Map<dynamic,dynamic>>_map=[
    {"Name":"Jiptha","Job":"Flutter"},
    {"Name":"ASwin","Job":"Mern"},
    {"Name":"Aleena","Job":"C++"},
    {"Name":"Abin","Job":"C"},
    {"Name":"Jiptha","Job":"Flutter"},
    {"Name":"ASwin","Job":"Mern"},
    {"Name":"Aleena","Job":"C++"},
    {"Name":"Abin","Job":"C"},
    {"Name":"Jiptha","Job":"Flutter"},
    {"Name":"ASwin","Job":"Mern"},
    {"Name":"Aleena","Job":"C++"},
    {"Name":"Abin","Job":"C"},
    {"Name":"Jiptha","Job":"Flutter"},
    {"Name":"ASwin","Job":"Mern"},
    {"Name":"Aleena","Job":"C++"},
    {"Name":"Abin","Job":"C"}
];
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return ListTile(
                title: Text(_map[index]["Name"].toString()),
                subtitle: Text(_map[index]["Job"].toString()),
              );

          })
          
        ),
      ),
    );
  }
}