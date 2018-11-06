

import 'package:flutter/material.dart';


class DiscoverPage extends StatefulWidget {
  final title;
  DiscoverPage(this.title);

  _DiscoverPage createState() => new _DiscoverPage();
}

class _DiscoverPage extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new ListView(children: [
      new Card(
        child: new Column(
          children: <Widget>[
            new Title(child: new Text("MacBook Air"), color: Colors.black),
            new Title(child: new Text("轻轻地，再次倾心。"), color: Colors.black),
            new FlatButton(
              child: new Text(
                "购买",
              ),
              onPressed: () {
                print("点击购买");
              },
            ),
            new Container(
              child: new Text("image"),
              padding: EdgeInsets.all(0),
              color: Colors.green,
            )
          ],
        ),
      ),
    ]));
  }
}