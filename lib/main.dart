import 'package:flutter/material.dart';

void main() {
  runApp(ButtonClass());
}

class ButtonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Images and Icons"),
            ),
            body: Container(
                //1. create new folder with name of assets in lib folder
                //2. added image/images in same folder that was you created
                //3. go to subspec.yaml file and uncomment assets line and add your image path
                //4. the path such as lib/assets/weather.jpg
                //5. and use same path here
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //showing image from local
                Text("Showing image from local"),
                Image.asset("lib/assets/weather.jpg"),
                SizedBox(width: 30.0),
                //for showing image using url
                Text("Showing image using url"),
                Image.network(
                    'https://images.pexels.com/photos/1431822/pexels-photo-1431822.jpeg?auto=compress&cs=tinysrgb&w=800'),
                // height: 200,
                // width: 300,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite,
                    ),
                    Icon(Icons.card_travel)
                  ],
                ),
              ],
            ))));
  }
}
