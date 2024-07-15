import 'package:flutter/material.dart';

// A StatelessWidget is a widget that does not require mutable state, meaning that it does not change once it is built. These widgets are immutable, meaning their properties cannot change – all values are final. Stateless widgets are ideal for static content.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateless Widget Example')),
        body: Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, I am a Stateless Widget');
  }
}
