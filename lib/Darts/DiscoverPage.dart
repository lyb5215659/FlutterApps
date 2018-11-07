import 'package:flutter/material.dart';
import 'package:fapphttp/ConfigFiles/AppConfigs.dart' as appConfigs;

class DiscoverPage extends StatefulWidget {
  final title;
  DiscoverPage(this.title);

  _DiscoverPage createState() => new _DiscoverPage();
}

class Product {
  final String title;
  final String subTitle;
  Function onPressed;
  final String imgPath;

  Product(this.title, this.subTitle, this.onPressed, this.imgPath);
}

// var products = [
//   // {"title": "RMBook Air", "subTitle": "轻轻地，再次倾心。","onPressed":""},
//   // new Product("RMBook Air", "轻轻地，再次倾心。" ,((BuildContext context)=>{Navigator.push(context, new MaterialPageRoute())}), 'imgPath'),
//   new Product("RMBook Air", "轻轻地，再次倾心。", () => {}, 'images/logon_one_min.png'),
//   new Product("新一代Phone", "新生所向。", () => {}, 'images/3pice_min.png'),
//   new Product("IBook Air", "安心静心读。", () => {}, 'images/logon_one_min.png'),
//   new Product("Max Phone", "满足你的大。", () => {}, 'images/3pice_min.png'),
//   new Product("精致IAir", "近乎完美品质。", () => {}, 'images/logon_one_min.png'),
//   new Product("The Future", "一起改变未来。", () => {}, 'images/3pice_min.png'),
// ];

class _DiscoverPage extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        // padding: EdgeInsets.fromLTRB(0,50,0,0),
        child: new ListView.builder(
          itemCount: appConfigs.products.length,
          itemBuilder: (context, index) => new GestureDetector(
                child: new Column(
                  children: <Widget>[
                    new GestureDetector(
                      child: (index - 3) == 0
                          ? new Container(
                              padding: EdgeInsets.all(10),
                              child: new ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                                leading: new Icon(Icons.store),
                                title: new Text(
                                  "前往Flutter Store 零售店",
                                  textAlign: TextAlign.left,
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: new Text(
                                    "Phone XS Max 支持双卡，给你更多选择，为生活都带来更多便利。"),
                                // new RichText(
                                //   text: TextSpan(text: "Phone XS Max 支持双卡，给你更多选择，为工作、生活都带来更多便利5"),
                                //   textAlign: TextAlign.left,
                                //   overflow: TextOverflow.clip,
                                //   textScaleFactor: 0.5,
                                //   softWrap: true,
                              ),
                            )
                          : new Card(),
                          onTap: (){print("goto store");},
                    ),
                    new Container(
                      padding: EdgeInsets.all(20),
                    ),
                    new Title(
                      child: new Text(
                        appConfigs.products[index].title,
                        style: new TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.black,
                    ),
                    new Title(
                        child: new Text(
                          appConfigs.products[index].subTitle,
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
                      child: new Image.asset(
                        appConfigs.products[index].imgPath,
                        width: 350,
                        height: 250,
                      ),
                      padding: EdgeInsets.all(0),
                      // color: Colors.green,
                    ),
                    (appConfigs.products.length - 1 > index)
                        ? new Divider()
                        : new Divider(
                            color: Colors.white,
                          ),
                  ],
                ),
                onTap: () {
                  print('点击图片进入详细页面');
                },
              ),
        ),
      ),
    );
  }
}
