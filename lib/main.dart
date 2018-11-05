import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

//import Pages
import 'package:fapphttp/Dars/DiscoverPage.dart';
import 'package:fapphttp/Dars/BuyPage.dart';
import 'package:fapphttp/Dars/LearnPage.dart';
import 'package:fapphttp/Dars/SearchPage.dart';
import 'package:fapphttp/Dars/BackPakePage.dart';
import 'package:fapphttp/Dars/PersonalCenterPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColorBrightness: Brightness.dark),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var appBottomNavTitles = ['探索', '选购', '学习', '搜索', '背包'];
  var appBottomNavIcons = [
    Icons.location_searching,
    Icons.computer,
    Icons.date_range,
    Icons.search,
    Icons.pages
  ];
  var _tabIndex=0;
  var _tabbodys = [
    new DiscoverPage('探索'),
    new BuyPage('选购'),
    new LearnPage('学习'),
    new SearchPage('搜索'),
    new BackPakePage('背包'),
  ];

  Text getTitle(int curIndex) {
    print("getTitle");
    print(curIndex);
    print(_tabIndex);
    if (curIndex == _tabIndex) {
      return new Text(
        appBottomNavTitles[_tabIndex],
        style: new TextStyle(color: Colors.blue),
      );
    } else {
      return new Text(
        appBottomNavTitles[curIndex],
        style: new TextStyle(color: Colors.grey),
      );
    }
  }

  Icon getIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Icon(
        appBottomNavIcons[_tabIndex],
        color: Color(Colors.blue.value),
      );
    } else {
      return new Icon(
        appBottomNavIcons[curIndex],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
var drawer = new Drawer(
            child: new ListView(children: [
          new Container(
            width: 300, height: 100, //color: Colors.green,
            child: new Center(
              child: new Text(
                "Flutter Store",
                style: new TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "bauhasus93"),
              ),
            ),
          ),
          new Divider(),
          new ListTile(
            onTap: () {
              print("个人中心");
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new PersonalCenterPage("个人中心")));
            },
            leading: new Icon(Icons.insert_emoticon),
            title: new Text("个人中心"),
            trailing: new Icon(Icons.chevron_right),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.av_timer),
            title: new Text("环宇工艺"),
            trailing: new Icon(Icons.chevron_right),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.directions_run),
            title: new Text("那写年的努力"),
            trailing: new Icon(Icons.chevron_right),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text("设置"),
            trailing: new Icon(Icons.chevron_right),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.local_cafe),
            title: new Text("关于Flutter Store"),
            trailing: new Icon(Icons.chevron_right),
          ),
          //  new Divider(),
        ])
        );

    return Scaffold(
        appBar: AppBar(
          // leading: new Text("选购",style: new TextStyle( fontSize: 22), textDirection: TextDirection.rtl,),
          title: Text(
           appBottomNavTitles[_tabIndex],
            textAlign: TextAlign.left,
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.insert_emoticon,
              ),
              onPressed: () {},
              tooltip: "insert a new item",
            ),
          ],
//  flexibleSpace: new Text("选购",style: new TextStyle( fontSize: 22),),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(icon: getIcon(0), title: getTitle(0)),
            new BottomNavigationBarItem(icon: getIcon(1), title: getTitle(1)),
            new BottomNavigationBarItem(icon: getIcon(2), title: getTitle(2)),
            new BottomNavigationBarItem(icon: getIcon(3), title: getTitle(3)),
            new BottomNavigationBarItem(icon: getIcon(4), title: getTitle(4)),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex:_tabIndex,
          onTap: (index) {
            print(index);
            setState(() {
              _tabIndex = index;
            });
          },
        ),
        drawer:drawer ,
        //  backgroundColor: Color(02616807),
        body: _tabbodys[_tabIndex]);
  }
}
