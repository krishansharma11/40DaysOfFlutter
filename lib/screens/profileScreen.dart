import 'package:flutter/material.dart';
import 'package:practics/main.dart';
import 'package:provider/provider.dart';
import 'user_model.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Name: ${userModel.name}"),
            TextField(
              onChanged: (newName) {
                userModel.updateName(newName);
              },
              decoration: InputDecoration(labelText: "Enter new name"),
            ),
          ],
        ),
      ),
    );
  }
}
