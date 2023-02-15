import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome world'),
        ),
        body: const Center(
          child: Text(
            
            // Set String
            'Hello I\'m Minjin!',

            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    ),
  );
}