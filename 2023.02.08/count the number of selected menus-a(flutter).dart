import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: UseFunctionsA(),
    ));

class UseFunctionsA extends StatefulWidget {
  @override
  UseFunctionsAState createState() => UseFunctionsAState();
}

int isSelected = 0;

class UseFunctionsAState extends State<UseFunctionsA> {
  
  
  // Create selectedNum() function with Positional Parameters
  void selectedNum(int index) {
    if (selected[index] == true) {
      isSelected = isSelected + 1;
    } else {
      isSelected = isSelected - 1;
    }
  }
  
  ////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
          title(),
          Expanded(
              child: ListView.separated(
            itemCount: faces.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                tileColor: selected[index] ? Colors.blueGrey : Colors.grey[200],
                onTap: () {
                  setState(() => selected[index] = !selected[index]);

                  
                  // Call selectedNum() function
                  selectedNum(index);
                  
                  ////////////////////////////////////////////////////
                  
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10.0, right: 20.0, bottom: 10.0),
                          child: Image.network(
                            images[index],
                            width: width * 0.1,
                            height: width * 0.1,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          alignment: Alignment.center,
                          child: Text(faces[index],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold, color: selected[index] ? Colors.white : Colors.black)),
                        ),
                      ]),
                ]),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 0.5,
                color: Colors.grey[50],
              );
            },
          )),
        ],
      ),
    );
  }

  List<String> faces = [
    "Happy",
    "Proud",
    "Silly",
    "Blessed",
    "Surprised",
    "Nervous",
    "Stressed",
    "Anxious",
    "Confused",
  ];
  List<String> images = [
    "https://cdn.shopify.com/s/files/1/1061/1924/products/Happy_Emoji_Icon_5c9b7b25-b215-4457-922d-fef519a08b06_large.png?v=1571606090",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/4_large.png?v=1571606116",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/Tongue_Out_Emoji_1_large.png?v=1571606093",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/3_large.png?v=1571606116",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/Surprised_Emoji_Icon_2_large.png?v=1571606093",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/Grinmacing_Emoji_Icon_edc24acc-f89e-4c48-ad19-9ca6281598ab_large.png?v=1571606089",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/Confounded_Face_Emoji_Icon_ios10_large.png?v=1571606090",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/Sweat_Emoji_Icon_2_large.png?v=1571606114",
    "https://cdn.shopify.com/s/files/1/1061/1924/products/7_large.png?v=1571606116",
  ];
  List<bool> selected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
}

Widget title() {
  return Container(
    color: Colors.grey[50],
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 30.0, left: 20.0),
          child: const Text('How did you feel today?',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding:
                  const EdgeInsets.only(top: 5.0, left: 20.0, bottom: 30.0),
              child: const Text('Select one or more feelings',
                  style: TextStyle(fontSize: 13.0, color: Colors.blueGrey)),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding:
                  const EdgeInsets.only(top: 5.0, right: 20.0, bottom: 30.0),
              child: Text('$isSelected Selected',
                  style: const TextStyle(fontSize: 13.0, color: Colors.grey)),
            ),
          ],
        ),
      ],
    ),
  );
}