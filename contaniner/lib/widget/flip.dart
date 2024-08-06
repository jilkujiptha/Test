import 'package:flutter/material.dart';
class FlipWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                child: Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Container(
                      // width: double.infinity,
                      // height:400,
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                        height: 165,
                        color: Colors.pink,
                        child: Image.asset("./image/c1.png",
                        fit: BoxFit.contain,
                        ),
                        
                        
                      ),
                      )

                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Icon(Icons.favorite,
                      color: Colors.black,
                      )
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Miraan",style: TextStyle(fontSize: 20),),
                              Row(
                              children: [
                                Text("63% off",style: TextStyle(color: Colors.green),),
                                SizedBox(width: 10),
                                Text("3,330",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text("1,227"),
                                SizedBox(width: 15),
                               
                              ],
                              ),
                               Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                     Icon(
                                      Icons.star,
                                      size: 20,
                                       color: Colors.green,
                                    ),
                                     Icon(
                                      Icons.star,
                                      size: 20,
                                       color: Colors.green,
                                    ),
                                     Icon(
                                      Icons.star,
                                      size: 20,
                                       color: Colors.green,
                                    ),
                                     Icon(
                                      Icons.star,
                                      size: 20,
                                       color: Colors.grey,
                                    ),
                                     Text("Free delivery"),
                                  ],

                                ),
                            ],
                             ),
                        ),
                      )
                  ],
                ),
               
              ),
              Container(
                width: 150,
                height:double.infinity,
                alignment: Alignment.center,

              ),
               Container(
                // color: Colors.white,
                alignment: Alignment.center,

              ),
              Container(
                 width: 200,
                height: double.infinity,
                alignment: Alignment.center,

              ),
               Container(
                // color: Colors.white,
                alignment: Alignment.center,

              ),
              Container(
                  width: 200,
                height: double.infinity,
                alignment: Alignment.center,

              ),
            ],
            ),
        ),
      ),
    );
  }
}