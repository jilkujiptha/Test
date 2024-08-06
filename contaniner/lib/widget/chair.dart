import 'package:flutter/material.dart';

class PageWork2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .5,
                  // color: Colors.amber,
                  child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.vertical(
                      bottom: Radius.circular(50),
                    ),
                    child: Image.asset(
                      "./image/chair.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 30,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "ITEM'S NAME",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: "noto"),
                      ),
                    ],
                  ),
                )
              ]),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Item's Name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "noto"),
                    ),
                    Spacer(),
                    Icon(
                      Icons.attach_money_rounded,
                      size: 33,
                    ),
                    Text(
                      "30",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "noto"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Text(
                  "Materials. Chairs can be made from wood, metal, or other strong materials, like stone or acrylic. In some cases, multiple materials are used to construct a chair; for example, the legs and frame may be made from metal and the seat and back may be made from plastic.",style: TextStyle(fontFamily: "noto"),
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  children: [
                    Text(
                      "Choose Color",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 151, 200, 240),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 245, 186, 205),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 100, right: 100),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 50),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              "Add to Cart",
                              style: TextStyle(fontSize: 18, fontFamily: "noto"),
                            )
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 41, 40, 40),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(20)),
                    ),
                  ),
                  Positioned(
                    right: 100,
                    bottom: -10,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(50)),
                      alignment: Alignment.center,
                      child: Text(
                        "2",
                        style: TextStyle(fontFamily: "noto"),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
