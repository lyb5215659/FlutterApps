import 'package:flutter/material.dart';
import 'package:fapphttp/ConfigFiles/AppConfigs.dart' as appConfigs;

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
      backgroundColor: Colors.grey[200],
      // appBar: new AppBar(title: new Text(widget.title)),
      body:
          // new Center(child: new Text(widget.title)),
          new ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index < 1
            ? new Container(
                padding:
                    EdgeInsets.fromLTRB(20, 20, 0, 0), //EdgeInsets.all(20),
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: (){print(index.toString()+"查看附近最近的零售店");},
                      child: new ListTile(
                        title: new Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: new Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text("附近的零售店"),
                              new Text(
                                "南京东路",
                                style: new TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        subtitle: new Text("700米 | 3分钟"),
                        trailing: new Icon(Icons.navigate_next),
                      ),
                    ),
                    new Divider(),
                    new GestureDetector(
                      onTap: (){print("查看其他零售店");},
                      child: 
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Icon(Icons.flag),
                        new Text(
                          "查找其他零售店",
                          style: new TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w200),
                        ),
                        new Container(
                          width: 150,
                        ),
                        new Icon(Icons.navigate_next),
                      ],
                    ),)
                  ],
                ),
              )
            : 
            new GestureDetector(
              onTap: (){print("查看："+index.toString());},
              child: 
            new Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 316,
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 314,
                      color: Colors.white,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Image.asset(
                            appConfigs.products[index].imgPath,
                            width: 220,
                            height: 150,
                          ),
                          new Text(
                            index.toString() + "Phone Max",
                            style: new TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    new Divider(
                      height: 2,
                    )
                  ],
                )),
      ),
      ),
    );
  }
}
