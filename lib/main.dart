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
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => MyHomePage(),
      'dashboard': (context) => DashboardScreen(data: "Orange"),
      'profile': (context) => ProfileScreen()
    });
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
                Navigator.pushNamed(context, 'dashboard');
              },
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => DashboardScreen(data: "Apple")));
              // },
              child: const Text("Dashboard"))
        ])));
  }
}
