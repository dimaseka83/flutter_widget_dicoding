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
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your name',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    content: Text('Hello, ${_controller.text}'),
                  );
                }
              );
            }, child: Text('Submit'))
          ],
        ),
        )
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}