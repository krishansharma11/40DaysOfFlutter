import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Column(children: [
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "hello krishan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "hello krishan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "hello krishan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "hello krishan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "hello krishan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "hello krishan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
              LoadImage()
            ])));
  }
}

class LoadImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assestImage = AssetImage('lib/images/ssd.jpg');
    Image image = Image(
      image: assestImage,
      height: 200,
    );
    return Container(child: image);
  }
}
