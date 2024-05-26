import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settingscreenios extends StatelessWidget {
  const Settingscreenios ({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddlistProvider>(context, listen: true);
    final providerfalse = Provider.of<AddlistProvider>(context, listen: false);

    return CupertinoPageScaffold(
        child: Column(
          children: [
            SizedBox(height: 90,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Icon(CupertinoIcons.person,size: 30,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Profile",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                      Text("Update Profile Date",style: TextStyle(

                      ),),
                    ],
                  ),
                  Spacer(),
                  CupertinoSwitch(value: Provider.of<ProfileProvider>(context).show, onChanged: (value) {
                    Provider.of<ProfileProvider>(context,listen: false).showprofile(value);
                  },)
                ],
              ),
            ),
            (Provider.of<ProfileProvider>(context).show)?Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: providertrue.image != null
                        ? FileImage(providertrue.image!)
                        : null,
                    child: providertrue.image == null
                        ? Icon(
                      CupertinoIcons.camera_on_rectangle,
                      size: 50,
                    )
                        : null,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CupertinoTextField(
                      controller: providertrue.txtname,
                      placeholder: "Name",
                      keyboardType: TextInputType.text,
                      prefix: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.person_add,
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CupertinoColors.systemGrey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CupertinoTextField(
                      controller: providertrue.txtmsg,
                      placeholder: "Chat",
                      keyboardType: TextInputType.text,
                      prefix: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.chat_bubble_text,
                          color: CupertinoColors.activeBlue,
                        ),
                      ),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CupertinoColors.systemGrey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CupertinoButton(

                          onPressed: () {

                          }, child: Text("Save")),
                      CupertinoButton(onPressed: () {

                      }, child: Text("Clear")),
                    ],
                  ),

                ],),

            ):Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Icon(CupertinoIcons.person,size: 30,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Theme",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                      Text("Change Theme",style: TextStyle(

                      ),),
                    ],
                  ),
                  Spacer(),
                  CupertinoSwitch(value: Provider.of<Themeprovider>(context,listen: true).dark, onChanged: (value) {
                    Provider.of<Themeprovider>(context,listen: false).theme(value);
                  },)
                ],
              ),
            ),
          ],
        ));
  }
}