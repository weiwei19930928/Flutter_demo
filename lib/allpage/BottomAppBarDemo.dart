import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomAppBarDeoState();
  }
}

class _BottomAppBarDeoState extends State<BottomAppBarDemo> {


  List<Widget> _eachview;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _eachview = List();
    _eachview..add(EachView('主页面1'))..add(EachView('主页面2'));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _scaffoldkey = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: _scaffoldkey,
      body: _eachview[_index],
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => EachView('新页面')));
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.near_me),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),

            IconButton(
              icon: Icon(Icons.edit_location),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class EachView extends StatefulWidget {

  String title;

  EachView(this.title);

  @override
  State<StatefulWidget> createState() => EachViewState();
}

class EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

displaySnackBar(BuildContext context) {

}