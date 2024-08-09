import 'package:flutter/material.dart';
import 'package:practics/screens/profileScreen.dart';
import 'package:provider/provider.dart';

class UserModel with ChangeNotifier {
  String _name = "Mission Infotech Shivdaspura";

  String get name => _name;

  void updateName(String newName) {
    _name = newName;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome, ${userModel.name}"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Text("Go to Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
