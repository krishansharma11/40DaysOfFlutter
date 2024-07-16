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
          backgroundColor: Colors.green,
          title: (const Text(
            "Margin, Padding and Alignment",
            style: TextStyle(
                color: Color.fromARGB(255, 127, 13, 5),
                fontWeight: FontWeight.w600),
          )),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            // margin: EdgeInsets.all(50),
            alignment: Alignment.center,
            padding: EdgeInsets.all(50),
            // padding: EdgeInsets.only(left: 10),
            height: 200,
            width: 200,
            color: Colors.red,
            child: const Text(
              "Margin, Padding, Alignment",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
