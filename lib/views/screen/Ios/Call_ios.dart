import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Callscreenios extends StatelessWidget {
  const Callscreenios ({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddlistProvider>(context,listen: true);
    final providerfalse = Provider.of<AddlistProvider>(context,listen: false);

    return CupertinoPageScaffold(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 80,),
              ...List.generate(providertrue.list.length, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: providertrue.image != null
                          ? FileImage(providertrue.image!)
                          : null,
                      child: providertrue.image == null
                          ? Icon(
                        CupertinoIcons.camera_on_rectangle,
                        size: 30,
                      )
                          : null,              ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(providertrue.list[index].name,style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text(providertrue.list[index].chats),
                      ],
                    ),
                    Spacer(),
                    Icon( CupertinoIcons.phone,),




                  ],
                ),
              ))

            ],
          ),
        ));
  }
}