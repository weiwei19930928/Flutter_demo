import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget{
  @override
  _FilterChipDemoState  createState() => _FilterChipDemoState();

}

class _FilterChipDemoState extends State<StatefulWidget>{

  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('可选择的标签'),),
      body: Center(
        child: FilterChip(
            label: Text('可选择标签'),
            selected: _isSelected,
            onSelected: (isSelected){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('类似toast')));
              setState(() {
                _isSelected = isSelected;
              });
            },
          selectedColor: Colors.orangeAccent,
        ),
      ),
    );
  }
}