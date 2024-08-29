import 'package:flutter/material.dart';
import 'package:practics/main.dart';
import 'package:practics/model/UserRegisterationModel.dart';
import 'package:provider/provider.dart';
import 'user_model.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserLoginModel>(context);
    final TextEditingController userNameController = TextEditingController();
    userNameController.text = userModel.userName;

    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Name: ${userModel.userName}"),
            TextField(
              controller: userNameController,
              // onChanged: (newName) {
              //   userModel.updateName(newName);
              // },
              decoration: InputDecoration(labelText: "Enter new name"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  userModel.updateName(userNameController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Name updated successfully!"),
                      duration: Duration(seconds: 2),
                    ),
                  );

                  // Navigator.pushNamed(
                  // context, '/loginScreen'); // Navigate to login screen
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  minimumSize: Size(400, 50),
                ),
                child: Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
