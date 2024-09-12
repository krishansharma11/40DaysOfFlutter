import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPreferencesClass(),
    );
  }
}

class SharedPreferencesClass extends StatefulWidget {
  @override
  SharedPreferencesScreen createState() => SharedPreferencesScreen();
}

class SharedPreferencesScreen extends State<SharedPreferencesClass> {
  TextEditingController username = TextEditingController();

  String nameData = "";
  saveData(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value); // Save the value
  }

  getData(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print(
        "Saved value is: ${prefs.getString(key)}"); // Correctly fetch and print the saved value
    setState(() {
      nameData = prefs.getString(key) ?? "value not get";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference Example"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 170, 19, 19), width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Enter Username",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 110, 109, 109),
                        fontSize: 18)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(nameData),
            Container(
              // margin: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  saveData("userName", username.text); // Save user input
                },
                child: const Text("Save Data"),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(320, 60),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  getData("userName");
                },
                child: Text("Load Data"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(320, 60),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
