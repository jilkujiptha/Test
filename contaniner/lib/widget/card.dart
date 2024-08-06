import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 70,left: 30,right: 30),
              alignment: Alignment.center,
              width: 350,
               height: 250, 
               decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-5, -5)
                    ),
                ],
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 47, 153, 240),Color.fromARGB(255, 3, 78, 139),Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  ),
               ),
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[ 
                      Container(
                        width: 35,
                        height: 35,
                        child: Image.asset("./image/chip.png"),
                        ), 
                        Spacer(),
                        Icon(
                          Icons.contactless_outlined,
                          color: Colors.white,
                          size: 35,
                        )
                      ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("1234",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "noto"),),
                      Spacer(),
                      Text("****",style: TextStyle(color: Colors.white,fontSize: 30),
                      ),
                      Spacer(),
                      Text("****",style: TextStyle(color: Colors.white,fontSize: 30)),
                      Spacer(),
                       Text("5678",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "noto",),),
                       ],
                        ),
                        Row(
                          children: [
                            Text("valid\nfrom ",style: TextStyle(fontSize: 10,color: Colors.white),),
                            SizedBox(width: 8,),
                            Text("01/23",style: TextStyle(color: Colors.white,fontFamily: "noto"),),
                             SizedBox(width: 25),
                            Text("valid\nupto ",style: TextStyle(fontSize: 10,color: Colors.white),),
                            SizedBox(width: 8),
                             Text("01/26",style: TextStyle(color: Colors.white,fontFamily: "noto"),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("\nJOHN DOE\n  ",style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: "noto")),
                            Spacer(),
                            Text("VISA",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "noto"),)
                          ],
                        )
                ],
               ),
               ),
          ),
        ),
      ),
    );
  }
}