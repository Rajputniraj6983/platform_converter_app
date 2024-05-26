import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/views/screen/Ios/Homescreen_ios.dart';
import 'package:provider/provider.dart';



class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider.of<Change>(context, listen: true).istrue?MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Homescreen(),
    ):CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomeScreen(

      ),
    );
  }

}