import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _email = "";
  String _role = "";

  String get email => _email;
  String get role => _role;

  void setUser(String email, String role) {
    _email = email;
    _role = role;
    notifyListeners();
  }

  void clearUser() {
    _email = "";
    _role = "";
    notifyListeners();
  }
}
