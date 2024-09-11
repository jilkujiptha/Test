import 'package:flutter/material.dart';

class hero extends StatefulWidget {
  const hero({super.key});

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hero2"),),
      body: Hero(tag: "hero-image", child: Image.network("https://www.google.com/search?sca_esv=cca1506e5bb311d6&sca_upv=1&sxsrf=ADLYWIKcd2jamWQg4-4yPQSWdt5Wo9lntQ:1725880856798&q=song+weilong&udm=2&fbs=AEQNm0DPvcmG_nCbmwtBO9j6YBzM68ZanC7g01Skprhw5JoufUv28nkH7BlZuPSVPZEeFf4zEsryEwMB77hXASo0GX6kc7f0ImceuC_sjza6Vb-covmbyhpamE8nFdDBXPVPzJTQU7MBXAFnfR130LMIBhqrIsoOl8ieFfXS3GWSgLtJxTcf267Wv5rKKgyx7fFUGn8sBvvl1n7GOk6qRIkbzjH9GOGG3A&sa=X&ved=2ahUKEwiTgpOb37WIAxX9S2wGHa2_KrIQtKgLegQIFRAB&biw=1920&bih=959&dpr=1#vhid=uiLmUAHvQQMdnM&vssid=mosaic",
     width: 300,
     height: 300,
      ),
      ),
    );
  }
}