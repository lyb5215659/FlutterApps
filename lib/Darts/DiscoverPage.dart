import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  final title;
  DiscoverPage(this.title);

  _DiscoverPage createState() => new _DiscoverPage();
}

class Product{
  final String title;
  final String subTitle;
   Function onPressed;
  final String imgPath;

  Product(this.title,this.subTitle,this.onPressed,this.imgPath);

}

class _DiscoverPage extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        // padding: EdgeInsets.fromLTRB(0,50,0,0),
        child: new ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(30),
                ),
                new Title(
                  child: new Text(
                    "RMBook Air",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.black,
                ),
                new Title(
                    child: new Text(
                      "轻轻地，再次倾心。",
                      style: new TextStyle(fontSize: 20),
                    ),
                    color: Colors.black),
                new FlatButton(
                  child: new Text(
                    "购买",
                    style: new TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  onPressed: () {
                    print("点击购买");
                  },
                ),
                new Container(
                  child: new GestureDetector(
                    child: new Image.asset(
                      'images/logon_one_min.png',
                      width: 350,
                      height: 250,
                    ),
                    onTap: () {
                      print('点击图片进入详细页面');
                    },
                  ),

                  padding: EdgeInsets.all(0),
                  // color: Colors.green,
                ),
              ],
            ),
            new Divider(),
            new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(30),
                ),
                new Title(
                  child: new Text(
                    "新一代Phone",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.black,
                ),
                new Title(
                    child: new Text(
                      "新生颜面。",
                      style: new TextStyle(fontSize: 20),
                    ),
                    color: Colors.black),
                new FlatButton(
                  child: new Text(
                    "购买",
                    style: new TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  onPressed: () {
                    print("点击购买");
                  },
                ),
                new Container(
                  child: new GestureDetector(
                    child: new Image.asset(
                      'images/3pice_min.png',
                      width: 350,
                      height: 250,
                    ),
                    onTap: () {
                      print('点击图片进入详细页面');
                    },
                  ),

                  padding: EdgeInsets.all(0),
                  // color: Colors.green,
                ),
              ],
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }
}
