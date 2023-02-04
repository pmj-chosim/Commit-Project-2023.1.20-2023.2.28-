import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ConditionalStatements(),
        ),
      ),
    );
  }
}

class ConditionalStatements extends StatefulWidget {
  @override
  ConditionalStatementsState createState() => ConditionalStatementsState();
}

class ConditionalStatementsState extends State<ConditionalStatements> {
  bool isLiked = false;

	/////////////// Write your code here ///////////////

  // Declare a String variable
  String boolCondition = '';

	////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

		/////////////// Write your code here ///////////////

    // Set String to 'Liked!' when you pressed IconButton widget
    if (isLiked == true) {
      boolCondition = "You like it!";

    // ELSE, Set String to 'Click Heart!'
    } else {
      boolCondition = "omg you don't like it";
    }

		////////////////////////////////////////////////////

    return Scaffold(
        body: Center(
          child: ListView(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              titleSection(),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Text(boolCondition),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, right: 5.0),
                    child: IconButton(
                      icon: isLiked
                          ? const Icon(Icons.favorite_outlined)
                          : const Icon(Icons.favorite_border_outlined),
                      color: isLiked ? Colors.red : Colors.black,
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, right: 15.0),
                    child: const Icon(Icons.chat_bubble_outline_outlined,
                        color: Colors.grey),
                  ),
                ],
              ),
            ]),
            Container(
              height: height * 0.35,
              margin: const EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: Icon(Icons.image, color: Colors.grey, size: height * 0.1),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: const Text('How to utilize Ternary Operator in Flutter?'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0, left: 15.0),
              child: const Text('5 minutes ago',
                  style: TextStyle(color: Colors.grey)),
            ),
          ]),
        ),
        appBar: AppBar(
          title: const Text('Distinguish if you Liked or not'),
        ));
  }
}

Widget titleSection() {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        width: 35,
        height: 35,
        margin: const EdgeInsets.only(top: 10.0, left: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey[400],
        ),
        child: const Icon(Icons.person, color: Colors.white),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: const Text('UserName'),
      ),
    ],
  );
}