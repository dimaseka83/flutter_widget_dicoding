import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Oswald'),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {

@override

Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: (){},
        ),
      title: Text('Flutter Demo'),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white,))
      ],
    ),

    body: Text('Custom Font', style: TextStyle(fontFamily: 'Oswald', fontSize: 30),),
  );
}

}