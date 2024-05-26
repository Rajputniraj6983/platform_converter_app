import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Chatsscreen extends StatelessWidget {
  const Chatsscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddlistProvider>(context,listen: true);
    final providerfalse = Provider.of<AddlistProvider>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
          ...List.generate(providertrue.list.length, (index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: providertrue.image != null ? FileImage(providertrue.image!) : null,
                    ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${providertrue.time.day}/${providertrue.time.month}/${providertrue.time.year}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "${providertrue.Time.hour}:${providertrue.Time.minute}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),



                  ],
                ),
              ),),
        ],
      ),
    );
  }
}