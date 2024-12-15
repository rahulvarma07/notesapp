import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class toggleBetweenLoginAndSignUp extends ChangeNotifier{
  bool _showLoginPage = true;
  bool get showLoginPage => _showLoginPage;

  void togglePage(){
    _showLoginPage = !_showLoginPage;
    notifyListeners();
  }
}