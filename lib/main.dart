import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:practics/screens/DashboardScreen.dart';
import 'package:practics/screens/profileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterScreen());
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterScreen> {
  int counter = 0;

  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Set State"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: TextStyle(
                color: Colors.red,
                // height: 50,
                fontWeight: FontWeight.bold,
                fontSize: 34),
            textAlign: TextAlign.center,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increamentCounter();
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
