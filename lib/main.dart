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


class FirstScreen extends StatelessWidget  {
  final String message = 'Hello from First Screen!';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
          }, child: Text('Pindah Screen')),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String message;

  SecondScreen(this.message);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: Text('Kembali'),
              onPressed: () {
              Navigator.pop(context);
            })
          ],
        )
      ),
    );
  }
}