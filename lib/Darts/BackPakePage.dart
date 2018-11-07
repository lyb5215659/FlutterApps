import 'package:flutter/material.dart';

class BackPakePage extends StatefulWidget {
  final title;
  BackPakePage(this.title);

  _BackPakePage createState() => new _BackPakePage();
}

var gifts = 0;

class _BackPakePage extends State<BackPakePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255), //Color(0x311607),
        primary: false,
        // appBar: new AppBar(title: new Text(widget.title)),
        body: gifts > 0
            ? new Center(
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
              )
            : new Center(
                child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(
                    Icons.card_giftcard,
                    color: Colors.blue,
                  ),
                  new Text("购物袋空空如也~",
                      style: new TextStyle(color: Colors.grey, fontSize: 20)),
                ],
              )));
  }
}
