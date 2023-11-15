import 'package:flutter/material.dart';

class Listve extends StatefulWidget {
  const Listve({super.key});

  @override
  State<Listve> createState() => _ListveState();
}

class _ListveState extends State<Listve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(onPressed: (){},child: Icon(Icons.chat)),
        SizedBox(height: 10),
        FloatingActionButton(onPressed: (){},child: Icon(Icons.location_on)),
      ],
    ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WHATSAPP"),
        leading: Icon(Icons.call),
        actions: [Icon(Icons.search), Icon(Icons.menu),PopupMenuButton(itemBuilder:(BuildContext context)=>[
          PopupMenuItem(child: Text("Settings")),
          PopupMenuItem(child: Text("Profile")),
          PopupMenuItem(child: Text("Logout")),
        ])],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.camera_alt),
                Text(
                  "CHAT",
                  style: TextStyle(fontSize: 15),
                ),
                Text("STATUS", style: TextStyle(fontSize: 15)),
                Text("CALL", style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("MARY"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("DIA"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("CAHRLES"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("PETER"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("TETE"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("CATE"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("JAMES"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("SAM"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("ADAM"),
            trailing: Icon(Icons.navigate_next),
          ),ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("JACOB"),
            trailing: Icon(Icons.navigate_next),
          ),ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("KARIM"),
            trailing: Icon(Icons.navigate_next),
          ),ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("SAMUEL"),
            trailing: Icon(Icons.navigate_next),
          ),ListTile(
            leading: CircleAvatar(child: Icon(Icons.contacts)),
            title: Text("NELSON"),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
