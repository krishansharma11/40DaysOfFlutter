import 'package:flutter/material.dart';

void main() {
  runApp(ButtonClass());
}

class ButtonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buttons Examples"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Elevated Button"),
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button Pressed");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                ),
                child: Text("Elevated Button"),
              ),
              SizedBox(height: 16), // Spacing between buttons
              Text("Text Button"),
              TextButton(
                onPressed: () {
                  print("Text Button Pressed");
                },
                child: Text("Text Button"),
              ),
              SizedBox(height: 16),
              Text("Outlined Button"),
              OutlinedButton(
                onPressed: () {
                  print("Outlined Button Pressed");
                },
                child: Text("Outlined Button"),
              ),
              SizedBox(height: 16),
              Text("Icon Button"),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  print("Icon Button Pressed");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
