import 'package:flutter/material.dart';
import 'package:flutter_app/allpage/pages/EmailScreen.dart';

import 'package:flutter_app/allpage/pages/HomeScreen.dart';
import 'package:flutter_app/allpage/pages/PagesScreen.dart';
import 'package:flutter_app/allpage/pages/AirPlayScreen.dart';
import 'util/CustomRoute.dart';

class BottomNavigationWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>BottomNavigationWidgetState();

}

class BottomNavigationWidgetState extends State<BottomNavigationWidget>
with SingleTickerProviderStateMixin{

  final bottomNavigationColor = Colors.blue;
  int currentIndex = 0;
  List<Widget> list = new List();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(new AirPlayScreen());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: list[currentIndex],
      bottomNavigationBar: new BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
              Icons.home,
              color: bottomNavigationColor,
          ),
          title: Text(
            'HOME',
            style: TextStyle(color: bottomNavigationColor),
          )
        ),
    BottomNavigationBarItem(
          icon: Icon(
              Icons.email,
              color: bottomNavigationColor,
          ),
          title: Text(
            'Emai',
            style: TextStyle(color: bottomNavigationColor),
          )
        ),
    BottomNavigationBarItem(
          icon: Icon(
              Icons.pages,
              color: bottomNavigationColor,
          ),
          title: Text(
            'PAGES',
            style: TextStyle(color: bottomNavigationColor),
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.airplay,
              color: bottomNavigationColor,
          ),
          title: Text(
            'AIRPLAY',
            style: TextStyle(color: bottomNavigationColor),
          ),
        )
      ],
        currentIndex: currentIndex,
        onTap: (int index){
        if(index<3) {
          setState(() {
            currentIndex = index;
          });
        }else
          Navigator.of(context).push(
              CustomRoute(AirPlayScreen()));
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}