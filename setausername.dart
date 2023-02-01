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
          child: UseAdvancedString(),
        ),
      ),
    );
  }
}

class UseAdvancedString extends StatefulWidget {
  @override
  UseAdvancedStringState createState() => UseAdvancedStringState();
}

class UseAdvancedStringState extends State<UseAdvancedString> {

	/////////////// Write your code here ///////////////
	
  // Set String data type variable with Quotation marks
  String userName = 'Minjin Park';

	////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ListView(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  userSection(),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, left: 10.0),

										/////////////// Write your code here ///////////////
                    
                    // Set contents of Text widget to String variable
                    child: Text(userName),

										////////////////////////////////////////////////////

                  ),
                ],
              ),
              iconSection(),
            ]),
            imageSection(context),
            Container(
              margin: const EdgeInsets.only(top: 15.0, left: 15.0),

							/////////////// Write your code here ///////////////
              
              // Use '$(dollar sign)' to combine Strings
              child: Text('Hello, my name is $userName!'),

							////////////////////////////////////////////////////

            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0, left: 15.0),
              child: const Text('5 minutes ago',
                  style: TextStyle(color: Colors.grey)),
            ),
          ]),
        ),
        appBar: AppBar(
          title: const Text('Set a User Name'),
        ));
  }
}

Widget userSection() {
  return Container(
    alignment: Alignment.center,
    width: 35,
    height: 35,
    margin: const EdgeInsets.only(top: 10.0, left: 15.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Colors.grey[400],
    ),
    child: const Icon(Icons.person, color: Colors.white),
  );
}

Widget iconSection() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10.0, right: 10.0),
        child: const Icon(Icons.favorite_border_outlined, color: Colors.grey),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10.0, right: 15.0),
        child:
            const Icon(Icons.chat_bubble_outline_outlined, color: Colors.grey),
      ),
    ],
  );
}

Widget imageSection(BuildContext context) {
  double height = MediaQuery.of(context).size.height;

  return Container(
    height: height * 0.35,
    margin: const EdgeInsets.only(top: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey[200],
    ),
    child: Icon(Icons.image, color: Colors.grey, size: height * 0.1),
  );
}
