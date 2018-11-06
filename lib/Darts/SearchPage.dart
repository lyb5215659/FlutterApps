import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final title;

  SearchPage(this.title);
  _SearchPage createState() => new _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // appBar: new AppBar(title: new Text(widget.title)),
      body: new Center(child: new Text(widget.title)),
    );
  }
}


