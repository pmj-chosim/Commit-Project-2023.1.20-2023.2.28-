import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeColor(),
    );
  }
}

class PracticeColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,

          // Set the color property as Colors.lightBlueAccent
          color: Colors.lightBlueAccent,


          // Set the color property as const Color.fromRGBO(235,80,40,0.5)
          //color: const Color.fromRGBO(235,80,40,0.5),

        ),
      ),
    );
  }
}