import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _ischecked1=false;
  bool _ischecked2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: const Color.fromARGB(255, 33, 65, 243),
                checkColor: Colors.white,
                value: _ischecked1,
                 onChanged: (bool? value){
                setState(() {
                  _ischecked1=value!;
                });
              }),
              Text("Accept"),
            ],
          ),
          CheckboxListTile(
            title: Text("New Box"),
            subtitle: Text("New box for Check"),
            secondary: Icon(
              Icons.message,
            ),
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.red[400],
            checkColor: Colors.white,
            value: _ischecked2, 
            onChanged: (bool? value){
              setState(() {
                _ischecked2=value!;
              });
          })
        ],
      ),
    );
  }
}