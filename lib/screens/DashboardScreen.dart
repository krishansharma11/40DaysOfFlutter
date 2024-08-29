import 'package:flutter/material.dart';
import 'package:practics/LoginScreen.dart';
import 'package:practics/main.dart';
import 'package:practics/model/UserRegisterationModel.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  final String data;

  DashboardScreen({this.data = ''});
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserLoginModel>(context);

    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${userProvider.userName}!'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate to the login screen and remove all previous routes
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Loginscreen()),
                (Route<dynamic> route) =>
                    false, // Remove all routes until reaching the login screen
              );
            },
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Text("Welcome to Dashboard Screen"),
          Text("you received data from home screen $data"),
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //     onPressed: () => Navigator.pop(context), child: Text("Back")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'profile'),
              child: Text("Profile")),
        ],
      )),
    ));
  }
}
