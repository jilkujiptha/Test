import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                        width: 300,
                        height: 300,
                        child: Image.asset("./image/blood-drop.webp")),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "iBlood",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 210,
                top: 30,
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/secondPage");
                      },
                      icon: Icon(Icons.add, color: Colors.white)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
