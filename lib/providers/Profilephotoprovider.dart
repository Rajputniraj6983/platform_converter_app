
import 'package:flutter/cupertino.dart';

class Profileprovider extends ChangeNotifier{
  bool show = false;
   void profile(bool value)
   {
     show = value;
     notifyListeners();
   }
}