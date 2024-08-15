import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({super.key});

  @override
  State<Multiple> createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  TextEditingController _controller = TextEditingController();

  List ls = [];

  void generate() {
    print(_controller.text);
    var data = int.parse(_controller.text);
    setState(() {
      ls = [];
      for (var i = 1; i <= 10; i++) {
        ls.add("${i} x ${data} = ${i * data}");
      }
    });

    // _controller.clear();
    print(ls);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    onPressed: generate,
                    child: Text("Generate"),
                    color: Colors.yellow,
                    height: 53,
                  )
                ],
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: ls.length,
                itemBuilder: (context, index) {
                  return Text(ls[index].toString());
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}