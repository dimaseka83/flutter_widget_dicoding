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

class FirstScreen extends StatefulWidget {
    @override
    _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>{
  bool agree = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),

      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value){
            setState(() {
              agree = value!;
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }
}