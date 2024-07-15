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
              ElevatedButton.icon(
                onPressed: () {
                  print("Elevated Button Pressed");
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // Text color
                ),
                label: Text("Elevated Button"),
                icon: Icon(Icons.add),
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
                icon: Icon(Icons.play_arrow),
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
