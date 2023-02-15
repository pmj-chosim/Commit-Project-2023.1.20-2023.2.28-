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
          child: PracticeText(),
        ),
      ),
    );
  }
}

class PracticeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
			// Set Container's child as Text
      child: const Text(

				// Set String as 'Hello, World!\nHi, There!'
        'Hello, World!\nHi, There! And I\'m Minjin Park!! hellohihello',

				// Set textAlign as end
        textAlign: TextAlign.end,

        style: TextStyle(

					// Set TextStyle's fontStyle as italic
          fontStyle: FontStyle.italic, 

					// Set TextStyle's fontSize as 20
          fontSize: 20, 

					// Set TextStyle's fontWeight as bold
          fontWeight: FontWeight.bold, 

					// Set TextStyle's height as 3
					height: 3,

					// Set TextStyle's letterSpacing as 5.0
          letterSpacing: 5.0,

					// Set TextStyle's fontFamily as 'RaleWay'
					fontFamily: 'RaleWay', 
        ),

        // Set TextOverflow as ellipsis
        overflow: TextOverflow.ellipsis,

      )
    );
  }
}