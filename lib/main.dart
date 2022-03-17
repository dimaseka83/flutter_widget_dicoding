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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Expanded(child: Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
        ),
        child: Padding(padding: const EdgeInsets.all(16.0),
        child: Text('Expanded',style: TextStyle(color: Colors.white, fontSize: 24),),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Flexible(child: Container(decoration: BoxDecoration(
        color: Colors.tealAccent,
        border: Border.all(color: Colors.white),
    ),
    child: Padding(padding: const EdgeInsets.all(16.0),
    child: Text('Flexible', 
    style: TextStyle(
      color: Colors.teal,
      fontSize: 24,
    ),
    ),
    ),
    ));
  }
}