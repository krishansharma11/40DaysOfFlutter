import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
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
