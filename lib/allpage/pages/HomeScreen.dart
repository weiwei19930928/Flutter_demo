import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '随便写,就是一标识',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget{
  @override
  _KeepAliveDemoState createState() =>_KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin{

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
//        title: Text('keep alive demo'),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(title: '保持页面状态1',),
          MyHomePage(title: '保持页面状态2',),
          MyHomePage(title: '保持页面状态3',),
        ],
      ),
    );
  }
}