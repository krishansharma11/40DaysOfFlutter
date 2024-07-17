import 'package:flutter/material.dart';

void main() {
  runApp(MyTextFieldClass());
}

class MyTextFieldClass extends StatelessWidget {
  TextEditingController ddsdsds = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formAge = GlobalKey<FormState>();

    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Input Text Field"),
            ),
            body: Form(
                key: formAge,
                child: Column(
                  children: [
                    Container(
                      color: Colors.amber,
                      // margin: const EdgeInsets.all(10),
                      child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Your Name",
                              filled: true,
                              fillColor: Color.fromARGB(255, 222, 220, 218),
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 173, 5, 24),
                              ),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.amber),
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
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          print("button tapped");
                          if (formAge.currentState!.validate()) {
                            print("Please Enter your Age");
                          } else {
                            print("entered age");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        child: Text("Submit"),
                      ),
                    )
                  ],
                ))));
  }
}
