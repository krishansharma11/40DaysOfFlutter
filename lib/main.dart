import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyTextFieldClass());
}

class MyTextFieldClass extends StatelessWidget {
  final name = TextEditingController();
  final age = TextEditingController();
  final email = TextEditingController();
  final number = TextEditingController();
  final password = TextEditingController();
  final _nameController = TextEditingController();

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
              title: const Text("Input Text Field"),
            ),
            body: SingleChildScrollView(
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.amber,
                          // margin: const EdgeInsets.all(10),
                          child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                controller: name,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Enter Your Name",
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 222, 220, 218),
                                  labelStyle: TextStyle(
                                    color: Color.fromARGB(255, 173, 5, 24),
                                  ),
                                ),
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.amber),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Your Name";
                                  }
                                  return null;
                                },
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextFormField(
                              controller: age,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 222, 220, 218),
                                  border: OutlineInputBorder(),
                                  labelText: "Enter your Age",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(255, 173, 5, 24))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter your Age";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextFormField(
                              controller: number,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 222, 220, 218),
                                border: OutlineInputBorder(),
                                labelText: "Enter Mobile Number",
                                labelStyle: TextStyle(color: Colors.red),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Your Mobile";
                                }
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextFormField(
                              controller: password,
                              // style: TextStyle(backgroundColor: Colors.yellow),
                              obscureText: true,
                              decoration: const InputDecoration(
                                fillColor: Color.fromARGB(255, 222, 220, 218),
                                filled: true,
                                labelText: "Enter Password",
                                border: OutlineInputBorder(),
                                labelStyle: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            // height: 100,
                            color: Colors.amber,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 222, 220, 218),
                                    border: OutlineInputBorder(),
                                    labelText: "Re-Enter Password"),
                                // labelStyle: TextStyle(color: Colors.red),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {
                              print("button tapped");
                              if (formKey.currentState!.validate()) {
                                print("name: ${name.text}");
                              } else {
                                print("entered age");
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber),
                            child: const Text("Submit"),
                          ),
                        )
                      ],
                    )))));
  }
}
