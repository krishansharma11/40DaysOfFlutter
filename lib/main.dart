import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:practics/screens/DashboardScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(child: (const Text("Welcome"))),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()));
              },
              child: const Text("Dashboard"))
        ])));
  }
}

class CustomTextField extends StatelessWidget {
  late final String placeholderText;
  final String labelText;
  final IconData prefixIcon;
  final ValueChanged<String> onChanged;

  CustomTextField(
      {required this.placeholderText,
      required this.labelText,
      required this.prefixIcon,
      required this.onChanged});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: placeholderText,
          labelText: placeholderText,
          prefixIcon: Icon(prefixIcon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
    ));
  }
}
