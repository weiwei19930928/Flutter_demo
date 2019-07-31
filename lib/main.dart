import 'package:flutter/material.dart';
import 'allpage/BottomAppBarDemo.dart';
import 'allpage/BottomNavigationWidget.dart';
import 'allpage/FrostedGlassDemo.dart';

void main() =>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'flutter 练习',
      theme: ThemeData.light(),
//    home: BottomAppBarDemo(),
    home: BottomNavigationWidget(),
    );
  }
}



