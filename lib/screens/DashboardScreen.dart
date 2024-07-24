import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String data;
  DashboardScreen({required this.data});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Welcome to Dashboard Screen"),
          Text("you received data from home screen $data"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text("Back"))
        ],
      )),
    ));
  }
}
