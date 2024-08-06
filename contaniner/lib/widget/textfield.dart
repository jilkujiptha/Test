import 'package:flutter/material.dart';
class TextfieldWidget extends StatelessWidget{
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: TextField(
          keyboardType: TextInputType.text,
          onChanged: (value) {
            print("value");
          },
          onTap: () {
            print("hello");
          },
          enabled:true ,
          maxLines: 1,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20)
              ),
            ),
            focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
            icon: Icon(
              Icons.account_box,
            ),
            suffixText: "Account",
            suffixStyle: TextStyle(color: Colors.green),
            contentPadding: EdgeInsets.all(30),
            labelText: "Password",
            hintText: "Password",
            helperText: "LogIn"
          ),
          ),

      ),
    );
  }

}