import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyListViewClass());
}

class MyListViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    //    final name = GlobalKey<FormState>();
    // final email = GlobalKey<FormState>();
    // final number = GlobalKey<FormState>();
    // final password = GlobalKey<FormState>();

    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("Item 1"),
          ),
          ListTile(
            title: Text("Item 2"),
          ),
          ListTile(
            title: Text("Item 3"),
          ),
        ],
      ),
    ));
  }
}
