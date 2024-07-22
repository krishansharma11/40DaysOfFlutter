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
          title: const Text('Custome Button'),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              titleButton: "Register",
              onPressed: () {
                print("hello");
                _showAlertDialog(
                    context, "Register", "User Register SuccesFully");
              },
            ),
            CustomButton(
              titleButton: "Login",
              onPressed: () {
                print("hello");
                _showAlertDialog(context, "Login", "user Login Successfully");
              },
            ),
          ],
        )));
  }
}

class CustomButton extends StatelessWidget {
  late final String titleButton;
  late final VoidCallback onPressed;

  CustomButton({required this.titleButton, required this.onPressed});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (ElevatedButton(
      onPressed: onPressed,
      child: Text(titleButton),
    ));
  }
}

void _showAlertDialog(
    BuildContext context, String msgTitle, String msgDescription) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(msgTitle),
        content: Text(msgDescription),
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
