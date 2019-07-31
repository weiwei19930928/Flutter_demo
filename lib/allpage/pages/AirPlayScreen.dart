import 'package:flutter/material.dart';
import 'SearchBarDemo.dart';

class AirPlayScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'flutter 练习',
      theme: ThemeData.light(),
//    home: BottomAppBarDemo(),
      home: SearchBarDemo(),
    );
  }
 

}