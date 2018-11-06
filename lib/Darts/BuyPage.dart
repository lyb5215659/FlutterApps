import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  final title;

  BuyPage(this.title);
  _BuyPage createState() => new _BuyPage();
}

class _BuyPage extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // appBar: new AppBar(title: new Text(widget.title)),
      body: new Center(child: new Text(widget.title)),
    );
  }
}


