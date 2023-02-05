import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: LoopStatements(),
    ));

class LoopStatements extends StatefulWidget {
  @override
  LoopStatementsState createState() => LoopStatementsState();
}

class LoopStatementsState extends State<LoopStatements> {


  // How many times to run 'for-loop'
  int numberOfItems = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              title(),
              Divider(
                thickness: 5.0,
                color: Colors.grey[200],
              ),

             
              // Use the 'for-loop' statement
              for (int i = 1; i <= numberOfItems; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    list(),
                    Divider(
                      thickness: 4.0,
                      color: Colors.grey[300],
                    ),
                ]),


            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Creating a repeated menu"),
      ),
    );
  }
}

Widget title() {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 15.0, right: 10.0, bottom: 10.0),
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: IconButton(
            icon: const Icon(Icons.store),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: const Text('Minjn Park',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 20,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(20)) //모서리를 둥글게
                  ),
              child: const Text('Welcome!', style: TextStyle(fontSize: 10)),
            ),
          ],
        ),
      ],
    ),
    trailing:
        const Icon(Icons.favorite_border_outlined, color: Colors.blueAccent),
    onTap: () {},
  );
}

Widget list() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
        child: const Text('ONLINE',
            style: TextStyle(fontSize: 10, color: Colors.grey)),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 10.0, left: 10.0),
        child: const Text('60% Off Code',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 10.0, left: 10.0),
        child: const Text('60% Off Next 6 Rides',
            style: TextStyle(fontSize: 10, color: Colors.grey)),
      ),
    ],
  );
}