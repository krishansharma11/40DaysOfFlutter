import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          title: Text('Material & Cupertino'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Material Button:'),
              ElevatedButton(
                  onPressed: () {
                    _showAlertDialog(context);
                  },
                  child: Text('Press Me'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 216, 216, 215))),
              SizedBox(height: 20),
              Text('Cupertino Button:'),
              CupertinoButton(
                onPressed: () {
                  _showAlertDialog(context);
                },
                child: Text('Press Me'),
                color: Colors.amberAccent,
              ),
            ],
          ),
        ));
  }
}

void _showAlertDialog(BuildContext context) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Alert'),
          content: Text('This is a Cupertino-style alert dialog.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Material Alert'),
          content: Text('This is a Material-style alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
