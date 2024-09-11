import 'package:flutter/material.dart';

class hero1 extends StatefulWidget {
  const hero1({super.key});

  @override
  State<hero1> createState() => _hero1State();
}

class _hero1State extends State<hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hero1"),),
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/hero2");
        },
        child: Hero(tag: "hero-image", child: Image.network("https://www.google.com/search?sca_esv=cca1506e5bb311d6&sca_upv=1&sxsrf=ADLYWIKcd2jamWQg4-4yPQSWdt5Wo9lntQ:1725880856798&q=song+weilong&udm=2&fbs=AEQNm0DPvcmG_nCbmwtBO9j6YBzM68ZanC7g01Skprhw5JoufUv28nkH7BlZuPSVPZEeFf4zEsryEwMB77hXASo0GX6kc7f0ImceuC_sjza6Vb-covmbyhpamE8nFdDBXPVPzJTQU7MBXAFnfR130LMIBhqrIsoOl8ieFfXS3GWSgLtJxTcf267Wv5rKKgyx7fFUGn8sBvvl1n7GOk6qRIkbzjH9GOGG3A&sa=X&ved=2ahUKEwiTgpOb37WIAxX9S2wGHa2_KrIQtKgLegQIFRAB&biw=1920&bih=959&dpr=1#vhid=uiLmUAHvQQMdnM&vssid=mosaic",
             width: 100,
             height: 100,
        ),
        ),
      ),
    );
  }
}