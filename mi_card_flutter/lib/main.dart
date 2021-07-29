import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            width: 100,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            color: Colors.white,
            margin: EdgeInsets.all(20),
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
