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

  final List<int> numberList = [1,2,3,4,5,6,7,8,9,10,11];

@override
Widget build(BuildContext context){
  return Scaffold(
    body: ListView.separated(itemBuilder: (BuildContext context, int index){
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '${numberList[index]}',
            style: TextStyle(fontSize: 50),
          ),
        ),
      );
    }, separatorBuilder: (BuildContext context, int index){
      return Divider();
    }, itemCount: numberList.length)
  );
}
}