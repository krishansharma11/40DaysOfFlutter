import 'package:flutter/material.dart';
import 'package:practics/model/UserRegisterationModel.dart';
import 'package:practics/screens/DashboardScreen.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>(); // Key for the form
    final TextEditingController _useremailController = TextEditingController();
    final TextEditingController _userpasswordController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _useremailController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Email Id',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email id';
                  }
                  return null;
                },
              ),
              SizedBox(height: 26),
              TextFormField(
                controller: _userpasswordController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final userProvider =
                          Provider.of<UserLoginModel>(context, listen: false);
                      // Validate login
                      if (userProvider.validateLogin(_useremailController.text,
                          _userpasswordController.text)) {
                        // Navigate to dashboard
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardScreen()),
                          (Route<dynamic> route) =>
                              false, // Remove all routes until reaching the login screen
                        );
                        // Navigator.pushNamed(context, '/dashboard');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Invalid credentials")),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    minimumSize: Size(400, 50),
                  ),
                  child: Text("Login"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (Route<dynamic> route) =>
                          false, // Remove all routes until reaching the login screen
                    );
                    // Navigator.pushNamed(context, '/dashboard');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    minimumSize: Size(400, 50),
                  ),
                  child: Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
