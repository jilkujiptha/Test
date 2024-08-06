import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class AppBarWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp",style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          shadowColor: Colors.black,
          elevation: 5,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon:Icon(
                Icons.qr_code_scanner,
                color: Colors.white,

                )
              ),
              IconButton(
              onPressed: (){}, 
              icon:Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,

                )
              ),
              IconButton(
              onPressed: (){}, 
              icon:Icon(
                Icons.menu,
                color: Colors.white,

                )
              ),
          ],
         ),
        //  floatingActionButton: TextButton(onPressed: (){},
        //  child: Icon(
        //   Icons.add,
        //   color: Colors.white,
        //  ),
        //  style: TextButton.styleFrom(
        //   backgroundColor: Colors.green,
        //  ),
        //  ),
         drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Settings"),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Security notifications"),
                leading: Icon(
                  Icons.key,
                ), onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("long pressed");
                },
              ),
               ListTile(
                title: Text("Privacy"),
                subtitle: Text("Block contacts"),
                leading: Icon(
                  Icons.lock,
                ), onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("long pressed");
                },
               ),
                ListTile(
                title: Text("Chats"),
                subtitle: Text("Theme,Wallpaper"),
                leading: Icon(
                  Icons.message,
                ), onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("long pressed");
                },
                ),
                 ListTile(
                title: Text("Notifications"),
                subtitle: Text("message,group and call"),
                leading: Icon(
                  Icons.notifications,
                ), onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("long pressed");
                },
                 ),
                  ListTile(
                title: Text("Favorite"),
                subtitle: Text("Add,Recorder,remove"),
                leading: Icon(
                  Icons.favorite_border,
                ), onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("long pressed");
                },
                  ),
                 ListTile(
                title: Text("Avatar"),
                subtitle: Text("Create,Edit"),
                leading: Icon(
                  Icons.masks,
                ), onTap: () {
                  print("Tapped");
                },
                onLongPress: () {
                  print("long pressed");
                },
                 )  
            ],
          ),
         ),
        //  bottomNavigationBar: BottomNavigationBar(
        //   items:[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),label: "home"),
        //        BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),label: "settings"),
        //       BottomNavigationBarItem(
        //       icon: Icon(Icons.menu),label: "menu")
        //       ]
        //        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.green,
          items:[
            Icon(
              Icons.home,
            ),
            Icon(
              Icons.search,
            ),
            Icon(
              Icons.video_camera_front,
            ),
            Icon(
              Icons.add,

            )
          ] 
          ),
        
      ),

    );
  }
}