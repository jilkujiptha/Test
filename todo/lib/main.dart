import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/ToDo/Todo1.dart';
import 'package:todo/provider/numberListProvider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => NumberListProvider(),
  child: MaterialApp(home: ToDO1(),),
  ));
}
