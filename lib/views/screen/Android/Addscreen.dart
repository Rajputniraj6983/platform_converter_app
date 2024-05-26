import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Addscreen extends StatelessWidget {
  const Addscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final providertrue = Provider.of<AddlistProvider>(context,listen: true);
    final providerfalse = Provider.of<AddlistProvider>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
          ...List.generate(providertrue.list.length, (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
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
                Icon(Icons.call,size: 30,),



              ],
            ),
          ))

        ],
      ),
    );
  }
}