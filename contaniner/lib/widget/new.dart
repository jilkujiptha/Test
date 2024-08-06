import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 40,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
                child: Column(
                  children: [
                    Text(
                      "Discover a New Path",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                margin: EdgeInsets.only(left: 5, right: 5),
                height: 50,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      margin: EdgeInsets.only(left: 5, right: 5),
                      height: double.infinity,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                offset: Offset(5, 5),
                                spreadRadius: 1
                                )
                          ]),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search for a Job ...",
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      margin: EdgeInsets.only(left: 15, right: 5),
                      width: 50,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 122, 121, 121),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(5, 5),
                              spreadRadius: 1
                            ),
                          ]),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.filter_list,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                width: 90,
                height: 50,
                child: Text(
                  "For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color.fromARGB(255, 122, 121, 121)
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.apple,
                                size: 50,
                              ),
                              SizedBox(width: 100),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey),
                                alignment: Alignment.center,
                                child: Text(
                                  "Part Time",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "IOS Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "400/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 122, 121, 121)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:
                                      Image.asset("./lib/icons/facebook.png"),
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "React Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "300/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 121, 121)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:
                                      Image.asset("./lib/icons/instagram.png"),
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "Python Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "400/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 121, 121)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:
                                      Image.asset("./lib/icons/search.png"),
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "Flutter Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "400/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 121, 121)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:
                                      Image.asset("./lib/icons/youtube.png"),
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "Django Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "400/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 121, 121)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:Icon(
                                    Icons.apple,
                                    size: 50,
                                  )
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "IOS Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "400/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 122, 121, 121)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:
                                      Image.asset("./lib/icons/facebook.png"),
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "React Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "300/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 71, 156, 212)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  child:
                                      Image.asset("./lib/icons/instagram.png"),
                                ),
                                SizedBox(width: 100),
                                Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Part Time",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ]),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 30,
                            child: Text(
                              "Python Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 100,
                            height: 20,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "300/h",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "For You",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .25,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("IOS Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Apple"),
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Icon(
                            Icons.apple,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("React Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Face Book"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                            width: 50,
                            height: 50,
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                            child: Container(
                                width: 10,
                                height: 10,
                                child: Image.asset("./lib/icons/facebook.png"))),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "300/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("Python Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Instagram"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                            width: 50,
                            height: 50,
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                            child: Container(
                                child: Image.asset("./lib/icons/instagram.png"))),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("Flutter Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Google"),
                        leading: Container(
                          padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Image.asset("./lib/icons/search.png")
                          
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("Django Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("You Tube"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Image.asset("./lib/icons/youtube.png")
                          
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("IOS Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Apple"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child:Icon(
                            Icons.apple,
                            size: 35,
                            color: Colors.black,
                          )
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("React Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Face Book"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Image.asset("./lib/icons/facebook.png")
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "300/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("Python Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Instagram"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Image.asset("./lib/icons/instagram.png")
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("Flutter Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("Google"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Image.asset("./lib/icons/search.png")
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        title: Text("Django Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        subtitle: Text("You tube"),
                        leading: Container(
                            padding: EdgeInsets.all(9),
                          width: 50,
                          height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                  offset: Offset(5, 5)
                              )
                             ]
                          ),
                          child: Image.asset("./lib/icons/youtube.png")
                        ),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "400/h",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}