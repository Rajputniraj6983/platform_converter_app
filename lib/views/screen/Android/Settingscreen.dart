import 'package:flutter/material.dart';
import 'package:platform_converter_app/providers/Profilephotoprovider.dart';
import 'package:provider/provider.dart';

class Settingscreen extends StatelessWidget {
  Settingscreen ({super.key});

  @override

  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddlistProvider>(context, listen: true);
    final providerfalse = Provider.of<AddlistProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                Icon(Icons.person,size: 30,),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profile",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text("Update Profile Date",style: TextStyle(

                    ),),
                  ],
                ),
                Spacer(),
                Switch(value: Provider.of<Profileprovider>(context).show, onChanged: (value) {
                  Provider.of<Profileprovider>(context,listen: false).show;
                },)
              ],
            ),
          ),
          (Provider.of<Profileprovider>(context).show)?Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: providertrue.image != null ? FileImage(providertrue.image!) : null,

                ),
                SizedBox(height: 10,),
                Container(
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextField(
                    controller: providertrue.txtname,
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Name",
                        icon: Icon(
                          Icons.person,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextField(
                    controller: providertrue.txtmsg,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Message",
                        hintText: "Hello",
                        icon: Icon(
                          Icons.message,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {

                    }, child: Text("Save")),
                    ElevatedButton(onPressed: () {

                    }, child: Text("Clear")),
                  ],
                ),
              ],
            ),

          ):Container(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                Icon(Icons.light_mode,size: 30,),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Theme",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Text("Change Theme",style: TextStyle(

                    ),),
                  ],
                ),
                Spacer(),
                Switch(value: Provider.of<Profileprovider>(context,listen: true).dark, onChanged: (value) {
                  Provider.of<Profileprovider>(context,listen: false).theme(value);
                },)
              ],
            ),
          ),

        ],
      ),
    );
  }
}