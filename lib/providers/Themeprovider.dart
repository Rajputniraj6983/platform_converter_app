
import 'package:flutter/cupertino.dart';

class Themeprovider extends ChangeNotifier{

  bool dark = false;

   void theme(bool value)
   {
     dark = value;
     notifyListeners();
     
   }
}