import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(MyApp());

//异步获取数据
// Future<Post> fetchPost() async {
//   final response =
//       await http.get('https://jsonplaceholder.typicode.com/posts/1');
//   final responsejson = json.decode(response.body);

//   return new Post.fromJson(responsejson);
// }

Future<List<Post>> fetchPost() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');
  final responsejson = json.decode(response.body);

  List<Post> posts = new List<Post>();
  for (var item in responsejson) {
    posts.add(new Post.fromJson(item));
  }
  // return new Post.fromJson(responsejson);
  return posts;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: new FutureBuilder<List<Post>>(
        future: fetchPost(),
        builder: (context, snapshot) {
          //把数据放在widget上
          var widgets = <Widget>[];
          widgets.add(
           new Container(
             child: new Center(
             heightFactor: 2,
              child:new ListTile(
               leading: new Icon(Icons.wb_incandescent),
              title: new Text("data from JsonPlaceHolder",style:new TextStyle(fontSize:22, fontWeight: FontWeight.bold,color: Colors.white), textAlign: TextAlign.center),
              subtitle: new  Text("https://jsonplaceholder.typicode.com/posts", textAlign: TextAlign.center,),
            //  subtitle: new Text(post.body),
            //  trailing: new Icon(Icons.book),
            )
            ),
             color: Colors.blueGrey[300],
           )
          );
          for (var post in snapshot.data) {
            widgets.add(
              
              new ListTile(
               leading: new Icon(Icons.bookmark, color: post.id%3==0?Colors.red:Colors.grey,),
              title: new Text(post.id.toString()+":"+post.title),
             subtitle: new Text(post.body),
            //  trailing: new Icon(Icons.book),
            )
            
            );
            widgets.add(new Divider());
          }
          //根据内容返回显示内容
          if (snapshot.hasData) {
            return new ListView(
             children: widgets,
            );
          } else if (snapshot.hasError) {
            return new Text(snapshot.error);
          }
          //当没数据和没出错时 显示 loading状态
          return CircularProgressIndicator();
        },
      )),
    );
  }
}

//定义 Post类
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
