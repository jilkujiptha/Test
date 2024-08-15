import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class NewUi extends StatefulWidget {
  const NewUi({super.key});

  @override
  State<NewUi> createState() => _NewUiState();
}

class _NewUiState extends State<NewUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle,
          size: 50,
          color: const Color.fromARGB(255, 61, 209, 184),
        ),
        title: Column(
          children: [
            Text(
              "manage",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "plans and accounts",
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.qr_code_scanner,
            size: 40,
            color: const Color.fromARGB(255, 61, 209, 184),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          useLegacyColorScheme: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                label: "manage",
                tooltip: "manage"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.payment,
                  color: Colors.black,
                ),
                label: "pay",
                tooltip: "pay"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                  color: Colors.black,
                ),
                label: "shop",
                tooltip: "shop"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
                label: "help",
                tooltip: "message")
          ]),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 228, 231, 247)),
        child: ListView(
          scrollDirection: Axis.vertical,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PREPAID",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "2 GB",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text("daily data left"),
                        SizedBox(height: 5),
                        Text("5G unlimitted data"),
                        SizedBox(height: 60),
                        Container(
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 228, 231, 247)),
                          child: Center(
                              child: Text(
                            "GET POSTPAID",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Container(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          "./image/phone.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Maximise savings & benefits",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Enjoy no daily limit & 75 GB data",
                        style: TextStyle(
                            color: const Color.fromARGB(
                              255,
                              126,
                              124,
                              124,
                            ),
                            fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "GET POSTPAID",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              // padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "./image/airtel1.webp",
                    fit: BoxFit.fill,
                  ),
                  Text(
                    "Home Delivery of New SIM, Get prepaid",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 1),
                  ),
                  SizedBox(width: 50),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                    size: 25,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 185,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EXPLORE AIRTEL BESTSELLERS",
                    style: TextStyle(
                        color: Colors.grey[800], fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color.fromARGB(
                                        255, 228, 231, 247)),
                                child: Icon(
                                  Icons.router,
                                  size: 30,
                                )),
                            Text(
                              "Wi-Fi",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromARGB(255, 228, 231, 247)),
                              child: Image.asset("./lib/icons/prepaid.png"),
                            ),
                            Text(
                              "upgrade to",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " postpaid",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromARGB(255, 228, 231, 247)),
                              child: Image.asset("./lib/icons/online.png"),
                            ),
                            Text(
                              "DTH",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromARGB(255, 228, 231, 247)),
                              child: Image.asset("./lib/icons/sim-card.png"),
                            ),
                            Text(
                              "new prepaid SIM",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset(
                            "./lib/icons/phone-call.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text("call manager"),
                      ],
                    )),
                SizedBox(width: 30),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  width: 130,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            "./lib/icons/gift.png",
                            fit: BoxFit.cover,
                          )),
                      Text("rewards &"),
                      Text("coupons")
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 130,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "./lib/icons/money.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text("refer & get"),
                      Text("₹ 300")
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
               padding: EdgeInsets.all(30),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("SHORTCUTS"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 228, 231, 247)
                      ),
                      child: Image.asset("")
                    ),
                     SizedBox(width: 35),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 228, 231, 247)
                      ),
                    ),
                    SizedBox(width: 35),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 228, 231, 247)
                      ),
                    ),
                     SizedBox(width: 35),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 228, 231, 247)
                      ),
                    ),
                   

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}