import 'package:flutter/material.dart';

class PersonalCenterPage extends StatefulWidget {
  final title;
  PersonalCenterPage(this.title);

  _PersonalCenterPage createState() => new _PersonalCenterPage();
}

class _PersonalCenterPage extends State<PersonalCenterPage> {
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
          Navigator.pop(context);
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
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}


