import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/providers/Dateprovider.dart';
import 'package:platform_converter_app/providers/Themeprovider.dart';
import 'package:provider/provider.dart';

import 'providers/Chnageprovider.dart';
import 'providers/Listprovider.dart';
import 'providers/Profilephotoprovider.dart';

void main() {
  runApp(MultiProvider(providers:[
    ChangeNotifierProvider(create: (context) => DateProvider(),),
    ChangeNotifierProvider(create: (context) => TimeProvider(),),
    ChangeNotifierProvider(create: (context) => Profileprovider(),),
    ChangeNotifierProvider(create: (context) => Listprovider(),),
    ChangeNotifierProvider(create: (context) => Themeprovider(),),
    ChangeNotifierProvider(create: (context) => Changeprovider(),),
  ],child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      routes: {
        '/' : (context) => Homescreen(),
      },
    );
  }
}
