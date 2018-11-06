import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  final title;

  LearnPage(this.title);
  _LearnPage createState() => new _LearnPage();
}

class _LearnPage extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // appBar: new AppBar(title: new Text(widget.title)),
      body: new Center(child: new Text(widget.title)),
    );
  }
}


