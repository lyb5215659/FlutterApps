import 'package:flutter/material.dart';
import 'package:fapphttp/Darts/MyHomePage.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);
  @override
  _SplashPage createState() => new _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  bool isStartHomePage = false;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: goToHomePage,
      child:
          // new Container(
          //   child: new Center(
          //     child: new Icon(Icons.devices_other),
          //   ),
          //   color: Colors.blue,
          //   padding: EdgeInsets.all(0),
          // ),
          new Image.asset(
        "images/1536*2048_001.png",
        fit: BoxFit.cover,
      ), //拉伸铺满全屏
    );
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

  void countDown() {
    //2秒后跳转
    var duration = new Duration(seconds: 2);
    new Future.delayed(duration, goToHomePage);
  }

  void goToHomePage() {
    if (!isStartHomePage) {
      //跳到主页销毁当前页
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(
              builder: (context) => new MyHomePage(title: "Home Page")),
          (Route<dynamic> rout) => false);
      isStartHomePage = true;
    }
  }
}
