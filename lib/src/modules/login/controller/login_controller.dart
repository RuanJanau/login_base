import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  String email = '';
  String password = '';

  changeEmail(String value) {
    email = value;
    notifyListeners();
  }

  changePassword(String value) {
    password = value;
    notifyListeners();
  }

  bool isDisabledButton() {
    if (EmailValidator.validate(email) && password.length > 8) {
      return true;
    } else {
      return false;
    }
  }
}