import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/Provider/NumberListProvider.dart';
import 'package:stateprovider/Provider/page1.dart';
void main(){
  runApp(ChangeNotifierProvider(create: (context)=>NumberListProvider(),
  child: MaterialApp(
    home: Provider1(),
  ),
  ));
}