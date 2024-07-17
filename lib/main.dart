import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(MyTextFieldClass());
}

class MyTextFieldClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Input Text Field"),
            ),
            body: Column(
              children: [
                Container(
                  color: Colors.amber,
                  // margin: const EdgeInsets.all(10),
                  child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter Your Name",
                            filled: true,
                            fillColor: Color.fromARGB(255, 222, 220, 218),
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 173, 5, 24),
                            )),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.amber),
                      )),
                )
              ],
            )));
  }
}
