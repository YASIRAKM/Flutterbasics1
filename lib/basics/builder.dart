import 'package:flutter/material.dart';

class Builders extends StatefulWidget {
  const Builders({super.key});

  @override
  State<Builders> createState() => _BuildersState();
}

class _BuildersState extends State<Builders> {
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
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Colors.teal[600]),
        appBar: AppBar(
          title: Text("WHATSAPP"),
          backgroundColor: Colors.teal[600],
          // leading: CircleAvatar(
          //   radius: 10,
          //   child: Icon(Icons.call),
          //   backgroundColor: Colors.greenAccent,
          // ),

          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Icon(Icons.search),
                PopupMenuButton(
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(child: Text("New group")),
                          PopupMenuItem(child: Text("New broadcast")),
                          PopupMenuItem(child: Text("Linked devices")),
                          PopupMenuItem(child: Text("Starred messages")),
                          PopupMenuItem(child: Text("Payments")),
                          PopupMenuItem(child: Text("Settings")),
                        ])
              ],
            )
          ],
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: contact.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                    child: Icon(Icons.person_2_outlined), radius: 20),
                title: Text(contact[index]),
                subtitle: Text("message"),
                trailing: Text("date"),
              );
            },
          ),
        ));
  }
}
