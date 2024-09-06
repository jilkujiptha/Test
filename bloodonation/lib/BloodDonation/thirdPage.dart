import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Donor Registration",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.red[900]
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Text("FULL NAME"),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.black),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color:Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Text("AGE"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Age",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("EMAIL"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("MOBILE"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("BLOOD GROUP"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Blood Group",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("DOB"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "DOB",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("GENDER"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Gender",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("WEIGHT"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Weight",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
           Row(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 child: TextButton(onPressed: (){}, child: Text("SUBMIT",style: TextStyle(color: Colors.red[900]),),
                 style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                 ),
                 ),
               ),
               Spacer(),
               TextButton(onPressed: (){}, child: Text("CANCEL",style: TextStyle(color: Colors.red[900])),
                 style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey[600]
               ),
               )
             ],
           ),
          ],
        ),
      ),
    );
  }
}
