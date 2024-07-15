import 'package:flutter/material.dart';

// A StatelessWidget is a widget that does not require mutable state, meaning that it does not change once it is built. These widgets are immutable, meaning their properties cannot change – all values are final. Stateless widgets are ideal for static content.
void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Stateless Widget Example')),
//         body: Center(
//           child: MyStatelessWidget(),
//         ),
//       ),
//     );
//   }
// }

// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('Hello, I am a Stateless Widget');
//   }
// }

// 2. Stateful Widgets
// A StatefulWidget is a widget that does require mutable state, meaning that it can change over time. This is useful when the UI can change dynamically, such as with user interactions or data updates. Stateful widgets consist of two classes: the StatefulWidget itself and the State class.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful Widget Example')),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Button pressed $_counter times'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Press me'),
        ),
      ],
    );
  }
}
