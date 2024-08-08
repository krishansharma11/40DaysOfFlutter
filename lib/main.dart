import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  @override
  Widget build(BuildContext context) {
    return FutureProvider<String>(
        create: (BuildContext context) => fetchData(),
        initialData: "Loading...",
        child: Scaffold(
            appBar: AppBar(
              title: Text("Future Provider"),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Consumer<String>(
                    builder: (context, data, child) {
                      return Text("${data}");
                    },
                  )
                ]))));
  }
}

class MyModel with ChangeNotifier {
  var count = 0;
  void increamentCount() {
    count++;
    notifyListeners();
    print("$count");
  }
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Hello, Future Provider!";
}
