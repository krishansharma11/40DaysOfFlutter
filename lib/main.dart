import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: (const Text("Hello World")),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 200,
        width: 400,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 200, horizontal: 100),
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(4)),
        // transform: Matrix4.rotationZ(0.1),
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        child: const Text(
          'Complex Container',
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.green,
            fontSize: 16,
          ),
        ),
      ),
    ));
  }
}
