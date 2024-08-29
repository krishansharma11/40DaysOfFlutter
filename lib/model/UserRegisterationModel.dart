import 'package:flutter/material.dart';

class UserLoginModel extends ChangeNotifier {
  String _userName = '';
  String _userEmail = '';
  String _userPassword = '';

  // Getters
  String get userName => _userName;
  String get userEmail => _userEmail;
  String get userPassword => _userPassword;

  // Setters
  void setUser(String name, String email, String password) {
    _userName = name;
    _userEmail = email;
    _userPassword = password;
    notifyListeners(); // Notify listeners when user data is updated
  }

  // Method to validate login
  bool validateLogin(String email, String password) {
    return email == _userEmail && password == _userPassword;
  }

  void updateName(String name) {
    _userName = name;
    notifyListeners();
  }
}
