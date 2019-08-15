import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class MyRefreshPage extends StatefulWidget {
  @override
  _MyRefreshPageState createState() => _MyRefreshPageState();
}

class _MyRefreshPageState extends State<MyRefreshPage> {
  ScrollController _scrollController;
  List<String> images;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    images = List();
    fetchTen();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchTen();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('下拉刷新加载'),
      ),
      body: RefreshIndicator(
        child: GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            controller: _scrollController,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildItem(images[index]);
            }),
        onRefresh: () async {
          await new Future.delayed(const Duration(seconds: 1));
          images.clear();
          fetchTen();
        },
      ),
    );
  }

  Widget _buildItem(String url) {
    return Container(
      constraints: BoxConstraints.tightFor(height: 150.0),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }

  fetchTen() {
    for (int i = 0; i < 10; i++) {
      fetch();
    }
  }

  void fetch() async {
    final response = await http.get('http://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        images.add(
          json.decode(response.body)['message'],
        );
      });
    } else {
      throw Exception('加载图片失败');
    }
  }
}




