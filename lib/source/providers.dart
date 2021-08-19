import 'package:flutter/material.dart';

class AuthPage with ChangeNotifier {
  bool _login = true;

  bool get login => _login;

  changeLogin() {
    _login = !_login;
    notifyListeners();
  }
}
