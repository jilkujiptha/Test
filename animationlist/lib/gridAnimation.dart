import 'package:flutter/material.dart';

class GridAnimation extends StatefulWidget {
  const GridAnimation({super.key});

  @override
  State<GridAnimation> createState() => _GridAnimationState();
}

class _GridAnimationState extends State<GridAnimation> {
  List<int>ls=[];
  final GlobalKey<AnimatedGridState>_gridKey=GlobalKey<AnimatedGridState>();

void _insertItem(index){
  ls.insert(index, ls.length);
  _gridKey.currentState?.insertItem(index,duration: Duration(milliseconds: 300));
}

void removeItem(index){
  ls.removeAt(index);
  _gridKey.currentState?.removeItem(index, (context,Animation){
    return ScaleTransition(scale: CurvedAnimation(parent: Animation, curve: Curves.ease),
    child: Card(
      child: Center(
        child: Text("Item Removed"),
      ),
    ),
    );
  },
  duration: Duration(milliseconds: 1000)
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Grid Animation")),),
      body: AnimatedGrid(
        key: _gridKey,
        itemBuilder: (context,index,Animation){
          return FadeTransition(opacity: Animation,
          child: Card(
            shadowColor: Colors.black,
            elevation: 4,
            child: ListTile(
              title: Text(ls[index].toString()
              ),
              trailing:IconButton(onPressed: (){
                removeItem(index);
              }, icon: Icon(Icons.delete)),
            ),
          )
        );
      }, 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _insertItem(ls.length);
      },
      child: Icon(Icons.add),
    ),
    );
  }
}