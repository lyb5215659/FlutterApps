import 'package:flutter/material.dart';

class BackPakePage extends StatefulWidget {
  final title;
  BackPakePage(this.title);

  _BackPakePage createState() => new _BackPakePage();
}

class _BackPakePage extends State<BackPakePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255), //Color(0x311607),
      primary: false,
      // appBar: new AppBar(title: new Text(widget.title)),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.close),
        onPressed: () {
          print("from first page to back home");
          // Navigator.pop(context);
        },
      ),
      body: new Center(
        child: new RaisedButton(
          color: Theme.of(context).accentColor,
          child: new Text(
            "Tap here to back",
            style: new TextStyle(color: Colors.white),
          ),
          onPressed: () {
            print("from first page to back home");
            // Navigator.pop(context);
          },
        ),
      ),
    );
  }
}


