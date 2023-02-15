// Async in Flutter

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: UseAsync(),
    ));

class UseAsync extends StatefulWidget {
  @override
  UseAsyncState createState() => UseAsyncState();
}

class UseAsyncState extends State<UseAsync> {
  late Future<String> future;
  
  /////////////// Write your code here ///////////////

	// Set Future<String> Type function 'viewSection'
  Future<String> viewSection() {

		// Change the delayed duration's second as you want
    return Future.delayed(const Duration(seconds: 3), () {
      return 'Done!';
    });
  }

	////////////////////////////////////////////////////
  
  @override
  void initState() {
    super.initState();
    future = viewSection();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            
            /////////////// Write your code here ///////////////
            
            // You don't need to understand every single Flutter code in this section. 
            // Just Listen to the lecture video and turn it over.
            FutureBuilder<String>(
              future: future,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return calSection();
                } else if (snapshot.hasData == false) {
                  return const CircularProgressIndicator();
                } else {
                  return const Text('Error');
                }
              },
            ),
            
            ////////////////////////////////////////////////////
            
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                children: numbers
                    .map(
                      (e) => TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          textStyle: TextStyle(
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            Result results = Calculator(
                                int.parse(controller1.text),
                                int.parse(controller2.text));

                            if (e == "+") {
                              num = results.plus().toString();
                            } else if (e == "-") {
                              num = results.minus().toString();
                            } else if (e == "*") {
                              num = results.multi().toString();
                            } else if (e == "AC") {
                              controller1.text = "0";
                              controller2.text = "0";
                              num = "0";
                            }
                          });
                        },
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Make a Calculator"),
      ),
    );
  }

  String cal = "";
  List<String> numbers = [
    "AC",
    "+",
    "-",
    "*",
  ];
}

abstract class Result {
  int number1;
  int number2;

  Result(this.number1, this.number2);

  int plus();
  int minus();
  int multi();
}

class Calculator implements Result {
  @override
  int number1;
  @override
  int number2;

  Calculator(this.number1, this.number2);

  @override
  int plus() {
    return number1 + number2;
  }

  @override
  int minus() {
    return number1 - number2;
  }

  @override
  int multi() {
    return number1 * number2;
  }
}

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();
String num = "0";

Widget calSection() {
  return Column(
    children: <Widget>[
      Container(
          padding: const EdgeInsets.only(
              top: 30, left: 30.0, right: 30.0, bottom: 10.0),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey[300]!, width: 2.0),
              ),
            ),
            textAlign: TextAlign.right,
            keyboardType: TextInputType.number,
            controller: controller1,
          )),
      Container(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey[300]!, width: 2.0),
              ),
            ),
            textAlign: TextAlign.right,
            keyboardType: TextInputType.number,
            controller: controller2,
          )),
      Container(
        padding: const EdgeInsets.only(right: 35.0, bottom: 10.0),
        alignment: Alignment.bottomRight,
        child: Text(num,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      Divider(
        thickness: 1.0,
        indent: 30,
        endIndent: 30,
        color: Colors.grey[400],
      ),
    ],
  );
}