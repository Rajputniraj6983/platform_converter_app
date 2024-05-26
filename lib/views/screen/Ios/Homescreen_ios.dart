import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'List_ios.dart';


class CupertinoHomeScreen extends StatelessWidget {
  const CupertinoHomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(

      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Platform Converter"),
          trailing: CupertinoSwitch(
            value: Provider.of<Changeos>(context, listen: true).istrue,
            onChanged: (value) {
              Provider.of<Changeos>(context, listen: false).change(value);
            },
          ),
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_add), label: 'Person'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone_arrow_up_right), label: 'Call'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: 'Settings'),
          ]),
          tabBuilder: (context, index) {
            return Screenlist[index];
          },
        ),
      ),
    );
  }
}