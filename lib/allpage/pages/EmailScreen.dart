import 'package:flutter/material.dart';
import 'FilterChipDemo.dart';

class EmailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '随便写,就是一标识',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FilterChipDemo(),
    );
  }
}