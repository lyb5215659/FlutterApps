import 'package:flutter/material.dart';

//import app varables const configs etc.
import 'package:fapphttp/ConfigFiles/AppConfigs.dart' as appConfigs;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: new Text("选购",style: new TextStyle( fontSize: 22), textDirection: TextDirection.rtl,),
          title: Text(
            appConfigs.appBottomNavTitles[appConfigs.tabIndex],
            textAlign: TextAlign.left,
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.insert_emoticon,
              ),
              onPressed: () {},
              tooltip: "Hello",
            ),
          ],
//  flexibleSpace: new Text("选购",style: new TextStyle( fontSize: 22),),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: appConfigs.getIcon(0), title: appConfigs.getTitle(0)),
            new BottomNavigationBarItem(
                icon: appConfigs.getIcon(1), title: appConfigs.getTitle(1)),
            new BottomNavigationBarItem(
                icon: appConfigs.getIcon(2), title: appConfigs.getTitle(2)),
            new BottomNavigationBarItem(
                icon: appConfigs.getIcon(3), title: appConfigs.getTitle(3)),
            new BottomNavigationBarItem(
                icon: appConfigs.getIcon(4), title: appConfigs.getTitle(4)),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: appConfigs.tabIndex,
          onTap: (index) {
            print(index);
            setState(() {
              appConfigs.tabIndex = index;
            });
          },
        ),
        drawer: appConfigs.appDrawer(context),
        //  backgroundColor: Color(02616807),
        body: appConfigs.tabbodys[appConfigs.tabIndex]);
  }
}
