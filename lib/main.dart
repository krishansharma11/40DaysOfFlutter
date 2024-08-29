import 'package:flutter/material.dart';
import 'package:practics/model/UserRegisterationModel.dart';
import 'package:practics/screens/profileScreen.dart';
import 'package:provider/provider.dart';
import 'package:practics/LoginScreen.dart';
import 'package:practics/screens/DashboardScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => UserLoginModel()), // Provide the UserProvider
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
      routes: {
        '/loginScreen': (context) => Loginscreen(),
        '/dashboard': (context) => DashboardScreen(
              data: '',
            ),
        'profile': (context) => ProfileScreen(),
      },
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>(); // Key for the form
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _useremailController = TextEditingController();
  final TextEditingController _userpasswordController = TextEditingController();
  final TextEditingController _userconfirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: create) Scaffold(
      appBar: 
      AppBar(
        title: Text("Registration"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 26),
              TextFormField(
                controller: _useremailController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Email',
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
                    return 'Please enter your Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 26),
              TextFormField(
                controller: _userconfirmPasswordController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Confirm Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your confirm password';
                  }
                  if (value != _userpasswordController.text) {
                    return 'Password and confirm password not matched';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Set the user data in UserLoginModel
                      Provider.of<UserLoginModel>(context, listen: false)
                          .setUser(
                        _usernameController.text,
                        _useremailController.text,
                        _userpasswordController.text,
                      );
                      Navigator.pushNamed(
                          context, '/loginScreen'); // Navigate to login screen
                    }
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
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/loginScreen'); // Navigate to login screen
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _useremailController.dispose();
    _userpasswordController.dispose();
    _userconfirmPasswordController.dispose();
    super.dispose();
  }
}
