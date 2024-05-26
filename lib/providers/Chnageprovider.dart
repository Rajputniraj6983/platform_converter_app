import 'package:flutter/cupertino.dart';

class Changeprovider extends ChangeNotifier{

  bool istrue = true;
  void change(bool value)
  {
    istrue= value;
    notifyListeners();

  }
}