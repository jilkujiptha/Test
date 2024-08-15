import 'package:flutter/material.dart';

class DropDownMenuWidget extends StatefulWidget {
  const DropDownMenuWidget({super.key});

  @override
  State<DropDownMenuWidget> createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<DropDownMenuWidget> {
  String? _selectedjob;
  final List<String>_jobs=[
    "Flutter",
    "Mern",
    "IOS",
    "Python",
    "java",
    "C++",
    "React"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           DropdownButton(
            icon: Icon(
              Icons.filter_list,
            ),
            padding: EdgeInsets.only(left: 20,right: 20),
            dropdownColor: Colors.blueGrey,
            isExpanded: true,
            hint: Text("Select Job"),
            underline: Container(
              height: 0,
            ),
            items: _jobs.map((String job){
              return DropdownMenuItem(
                value: job,
                child: Text(job),
                );
           }).toList(), 
           onChanged: (value){
            setState(() {
              _selectedjob=value;
            });

           }),
           Text(_selectedjob==null?"No job Selected":"$_selectedjob is Selected")
          ],
        ),
      ),
    );
  }
}