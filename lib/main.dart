import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10)),
          Text('MainAxisAlignment.spaceEvenly'),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text('MainAxisAlignment.spaceAround'),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text('MainAxisAlignment.spaceBetween'),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text('MainAxisAlignment.start'),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
            ],
          ),
           Padding(padding: EdgeInsets.only(top: 10)),
          Text('MainAxisAlignment.center'),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
            ],
          ),
           Padding(padding: EdgeInsets.only(top: 10)),
          Text('MainAxisAlignment.end'),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.share),
              Icon(Icons.thumb_up),
              Icon(Icons.thumb_down)
            ],
          ),
        ],
      ),
    );
  }
}
