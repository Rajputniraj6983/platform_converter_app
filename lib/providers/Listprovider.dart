
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Listprovider extends ChangeNotifier {
  final picker = ImagePicker();
  File? image;

  List<ListModal> list = [];

  DateTime dateTime = DateTime.now();
  TimeOfDay timesofDay = TimeOfDay.now();

   TextEditingController txtName = TextEditingController();
   TextEditingController txtNumber = TextEditingController();
   TextEditingController txtMsg = TextEditingController();

     Future addImage() async {
       final PickedFile = await  picker.pickImage(source: ImageSource.gallery);

       if (pickedFile != null) {
         image = File(pickedFile.path);
       }
       notifyListeners();

     }
      void addlist(ListModal listModal)
      {
        list.add(listModal);
        log(list.length);
        notifyListeners();

      }
      DateTime time = DateTime.now();
       void.DatePicker(value){
         time = value!;
         notifyListeners();

      }
       TimeOfDay Time = TimeOfDay(hour: TimeOfDay.hoursPerDay, minute: TimeOfDay.minutesPerHour);
        void TimePicker(value){
          Time = value!;
          notifyListeners();

        }


}