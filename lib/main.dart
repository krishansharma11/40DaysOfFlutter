import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: (const Text("Row and Column")),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Column"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 80,
                  color: Colors.yellow,
                ),
                Row(
                  children: [
                    Text("Row"),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ],
                ),
                Stack(children: [
                  Text("Stack"),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    height: 250,
                    width: 250,
                    color: Colors.red,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ])
              ])),
    );
  }
}
