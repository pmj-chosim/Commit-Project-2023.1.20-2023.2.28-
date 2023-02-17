import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: PracticeContainer(),
        ),
      ),
    );
  }
}

class PracticeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        // Set alignment as center
        alignment: Alignment.center,

        // Set the size of height as 100
        height: 100,

				// Set the size of width as 200
        width: 200,

        // Set the size of margin as const EdgeInsets.all(100)
        margin: const EdgeInsets.all(100),

				// Set the size of padding as const EdgeInsets.all(20)
        padding: const EdgeInsets.all(20),

        // Set decoration as BoxDecoration
        decoration: BoxDecoration(

          // Set color as yellow
          color: Colors.yellow,

          // Set shape as rectangle
          shape: BoxShape.rectangle,

          // Set border radius as BoderRadius.circular(15.0)
          borderRadius: BorderRadius.circular(15.0),

        ),

        // Set child as const Text('This is Container')
        child: const Text('This is Container'),

      ),
    );
  }
}