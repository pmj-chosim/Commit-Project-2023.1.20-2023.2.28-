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
          child: TernaryOperators(),
        ),
      ),
    );
  }
}

class TernaryOperators extends StatefulWidget {
  @override
  TernaryOperatorsState createState() => TernaryOperatorsState();
}

class TernaryOperatorsState extends State<TernaryOperators> {
  String boolCondition = '';


  // Set boolean data type variable
  bool isLiked = false;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    if (isLiked == true) {
      boolCondition = "Liked!";
    } else {
      boolCondition = "Click Heart!";
    }

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
											
											/////////////// 삼항 연산자///////////////

                      // Change Icon widget in reverse
                      icon: isLiked
                          ? const Icon(Icons.favorite_outlined)
                          : const Icon(Icons.favorite_border_outlined),

                      // Change Icon widget's color property in reverse
                      color: isLiked ? Colors.blue : Colors.grey,

											////////////////////////////////////////////////////

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
          title: const Text('Make a Like Button'),
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