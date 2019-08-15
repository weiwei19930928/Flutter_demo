import 'package:flutter/material.dart';
import 'refresh/gridview_demo.dart';
import 'refresh/pull_on_loading.dart';
//import 'refresh/pull_on_refresh.dart';
//import 'refresh/on_down_loading_refresh.dart';

class PagesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }

}