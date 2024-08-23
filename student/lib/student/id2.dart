import 'dart:convert';

import 'package:flutter/material.dart';

class Student2 extends StatefulWidget {
  const Student2({super.key});

  @override
  State<Student2> createState() => _Student2State();
}

class _Student2State extends State<Student2> {
  @override
  Widget build(BuildContext context) {
    final Map<dynamic,dynamic>mp=jsonDecode(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      appBar: AppBar(title: Text("STUDENT'S DETAILS"),),
      body: Container(
        child: Column(
          children: [
            Text(mp["First Name"]),
             Text(mp["Last Name"]),
              Text(mp["Email"]),
               Text(mp["Phone"]),
                Text(mp["Address"]),
                 Text(mp["City"]),
          ],
        ),
      ),
    );
  }
}