export 'theme_provider.dart';
import 'package:flutter/material.dart';

class CommonProvider extends ChangeNotifier{

  String  languageChecker = 'En';
  bool resentButtonChecker = false;
  String loginButtonChecker = "Student";

  //singleton
  static final _currentUser = CommonProvider._internal();
  factory CommonProvider(){
    return _currentUser;
  }
  CommonProvider._internal();
}

