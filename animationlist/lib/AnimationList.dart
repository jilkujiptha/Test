import 'package:flutter/material.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({super.key});

  @override
  State<AnimationList> createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  GlobalKey<AnimatedListState>_listKey=GlobalKey<AnimatedListState>();
  List _items=[];
  int counter=0;
  void _addItem(){
    setState(() {
      _items.insert(0, "item ${counter++}");
      _listKey.currentState?.insertItem(0,duration: Duration(milliseconds: 300));
    });
    print(_items);
  }
void _removeItem(index){
  final String removedItem=_items.removeAt(index);
  _listKey.currentState?.removeItem(index, (context,Animation){
    return SizeTransition(sizeFactor: Animation,
    axisAlignment: 0,
    child: ListTile(
      title: Text("item removed"),
    ),
    );
  },
  duration: Duration(milliseconds: 500),
  );
  print(removedItem);
   

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Animted List"),
      ),
      actions: [
        IconButton(onPressed: _addItem, 
        icon: Icon(Icons.add))
      ],
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context,index,Animation){
          return SizeTransition(sizeFactor: Animation,
          child: ListTile(
            title: Text(_items[index]),
            trailing:IconButton(onPressed: (){
             _removeItem(index);
            }, icon: Icon(Icons.delete))
          ),
          );
          
      }),
    );
  }
}