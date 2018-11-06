import 'package:flutter/material.dart';
import 'package:fapphttp/Darts/PersonalCenterPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

//import Pages
import 'package:fapphttp/Darts/DiscoverPage.dart';
import 'package:fapphttp/Darts/BuyPage.dart';
import 'package:fapphttp/Darts/LearnPage.dart';
import 'package:fapphttp/Darts/SearchPage.dart';
import 'package:fapphttp/Darts/BackPakePage.dart';

Widget appDrawer(BuildContext context) {
  return new Drawer(
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
  ]));
}

var appBottomNavIcons = [
  Icons.location_searching,
  Icons.computer,
  Icons.date_range,
  Icons.search,
  Icons.pages
];

var appBottomNavTitles = ['探索', '选购', '学习', '搜索', '背包'];

var tabbodys = [
  new DiscoverPage('探索'),
  new BuyPage('选购'),
  new LearnPage('学习'),
  new SearchPage('搜索'),
  new BackPakePage('背包'),
];
var tabIndex = 0;

Text getTitle(int curIndex) {
  // print("getTitle");
  // print(curIndex);
  // print(tabIndex);
  if (curIndex == tabIndex) {
    return new Text(
      appBottomNavTitles[tabIndex],
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
  if (curIndex == tabIndex) {
    return new Icon(
      appBottomNavIcons[tabIndex],
      color: Color(Colors.blue.value),
    );
  } else {
    return new Icon(
      appBottomNavIcons[curIndex],
    );
  }
}

// PopupMenuButton
class Choice{
  const Choice({this.title,this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Car', icon: Icons.directions_car),
  Choice(title: 'Bicycle', icon: Icons.directions_bike),
  Choice(title: 'Boat', icon: Icons.directions_boat),
  Choice(title: 'Bus', icon: Icons.directions_bus),
  Choice(title: 'Train', icon: Icons.directions_railway),
  Choice(title: 'Walk', icon: Icons.directions_walk),
];
 Choice selectedChoice = choices[0]; 