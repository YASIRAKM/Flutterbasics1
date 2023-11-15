import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(children: [CircleAvatar(child: Text("Y"),radius: 20,),Text("Yasir")],),actions: [Icon(CupertinoIcons.search),PopupMenuButton(itemBuilder: (BuildContext context)=>[])],backgroundColor: Colors.blueAccent),
      body: SafeArea(
        child: ListView(
          children: [
            Text("Settings",style: TextStyle(color: Colors.blue)),
            ListTile(leading: Icon(CupertinoIcons.bell_fill),title: Text("Notification and Sounds"),),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),ListTile(leading: Icon(Icons.lock),title: Text("Privacy and Security"),),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),ListTile(leading: Icon(CupertinoIcons.clock),title: Text("Data and Storage"),),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),ListTile(leading: Icon(CupertinoIcons.chat_bubble),title: Text("Chat Settings"),),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),ListTile(leading: Icon(CupertinoIcons.folder_open),title: Text("Folders"),),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),ListTile(onTap:(){
              Navigator.pop(context);
            },leading: Icon(Icons.devices_outlined),title: Text("Devices"),),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),ListTile(leading: Icon(Icons.language_outlined),title: Text("Language"),),

            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),
Divider(thickness: 10,color: Colors.grey,),
            ListTile(leading: Icon(CupertinoIcons.star),title: Text("Telegram Premium"),)
            ,Divider(thickness: 10,color: Colors.grey,),
            Text("Help",style: TextStyle(color: Colors.blue)),
            ListTile(leading: Icon(Icons.chat_rounded),title: Text("Ask a Question"),),

            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),
ListTile(leading: Icon(Icons.chat_rounded),title: Text("Telegram Faq"),),

            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),
ListTile(leading: Icon(Icons.verified_user_outlined),title: Text("Privacy and Policy"),),

            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Divider(color: Colors.grey,),
            ),

          ],
        ),
      ),
    );
  }
}
