import 'package:flutter/material.dart';
import 'package:flutter_app/allpage/util/asset.dart';

class SearchBarDemo extends StatefulWidget{

  @override
  _SearchBarDemoState createState() =>_SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchBarDemo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: ()=>showSearch(context: context, delegate: SearchBarDelegate())
          ),
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(icon: Icon(Icons.clear),onPressed: ()=>query="")];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: ()=>close(context,null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Center(
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Card(
          color: Colors.redAccent,
          child: Center(
            child: Text(query+'哈哈'),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(

          onTap: (){
            query = suggestionList[index];
            showResults(context);},

          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
        ));
  }
}