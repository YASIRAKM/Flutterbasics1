import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  List contact = [
    "Adam",
    "Charles",
    "David",
    "Davies",
    "Chris",
    "Samuel",
    "Emma",
    "Alby",
    "Abin",
    "Samuel",
    "Ben",
    "Hendo",
    "Silva",
    "John",
    "Jacob"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[600],
          leading: Icon(Icons.arrow_back),
          title: Column(
            children: [
              Text(
                "Selected contact",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "30 contacts",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.search),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(child: Text("New group")),
                    PopupMenuItem(child: Text("New broadcast")),
                    PopupMenuItem(child: Text("Linked devices")),
                    PopupMenuItem(child: Text("Starred messages")),
                    PopupMenuItem(child: Text("Payments")),
                    PopupMenuItem(child: Text("Settings")),
                  ]
                )
              ],
            )
          ]),
    body:ListView.separated(itemBuilder: (BuildContext context,int index){
      if(index==0){
        return Column(
          children: [
            ListTile(leading: CircleAvatar(radius: 20,backgroundColor: Colors.teal[600],child: Icon(Icons.group_rounded)),title:Text("New Group") ,),
            ListTile(leading:CircleAvatar(radius: 20,backgroundColor: Colors.teal[600],child: Icon(Icons.person_add_alt_1)),title:Text("New Contact") ,),
            ListTile(leading: CircleAvatar(radius: 20,backgroundColor: Colors.teal[600] ,child: Icon(Icons.groups)),title:Text("New Community") ,),
            Text("Contact on whatsapp",style: TextStyle(color: Colors.black54),)
          ],
        )


        ;
      }else
        return ListTile(
          leading: CircleAvatar(
              child: Icon(Icons.person_2_outlined), radius: 20),
          title: Text(contact[index-1]),
          subtitle: Text("message"),
          trailing: Text("date"),
        );
    }, separatorBuilder: (BuildContext context,int index){
      return Divider(
        thickness: 2,
      );
    }, itemCount: contact.length+1) ,);
  }
}
