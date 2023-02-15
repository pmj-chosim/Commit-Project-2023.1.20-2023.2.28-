import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SampleApp(),
    );
  }
}

class SampleApp extends StatefulWidget {
  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: Text('$count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}