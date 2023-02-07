import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MakeMaps(),
    ));

class MakeMaps extends StatefulWidget {
  @override
  MakeMapsState createState() => MakeMapsState();
}

class MakeMapsState extends State<MakeMaps> {


  // Declare and set Map variable "sales"
  Map sales = {
    'product1': '40%',
    'product2': '80%',
    'product3': '70%',
    'product4': '50%'
  };

	////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          title(),
          Divider(
            thickness: 5.0,
            color: Colors.grey[200],
          ),
          Expanded(
              child: ListView.separated(
            itemCount: sales.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {},
                title: Row(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: const Text('ONLINE',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: Text(

											
                            
                            // Set the contents of Text widget to key's value
                            '${sales['product${index+1}']} Off Code',

														////////////////////////////////////////////////////

                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            
                            // Set the contents of Text widget to key's value
                            '${sales['product${index+1}']} Off Next 6 Rides',

														////////////////////////////////////////////////////

                              style: const TextStyle(
                                  fontSize: 10, color: Colors.grey)),
                        ),
                      ]),
                ]),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 5.0,
                color: Colors.grey[200],
              );
            },
          )),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Make a discount coupon list"),
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
              child: const Text('StoreName',
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
              child: const Text('Online', style: TextStyle(fontSize: 10)),
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