

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter1/Telegram/Settingss.dart';

class Telegram extends StatefulWidget {
  const Telegram({super.key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  List Profileim = [
    "assets/images/A.jpg",
    "assets/images/B.jpg",
    "assets/images/c.jpeg",
    "assets/images/D.jpg",
    "assets/images/E.jpeg",
    "assets/images/F.jpeg",
    "assets/images/H.jpg",
    "assets/images/I.jpeg",
    "assets/images/J.jpg",
    "assets/images/K.jpeg",
    "assets/images/L.jpg"
  ];
  List Contactname = [
    "Abin",
    "Jack",
    "Sam",
    "Mary",
    "Adam",
    "Lisa",
    "Gabi",
    "Emma",
    "Eric",
    "Jeny",
    "John"
  ];
  List Messagesub = [
    "sxdcftygbuhfrrxdcfg",
    "erctvybun rc",
    "rctfvybubt",
    "XShjjbgjgjhjklnhi",
    "jshdtiusil",
    "dscfreefc",
    "afssfEWGF",
    "ACUIWUEFIC",
    "TYWUIHXC",
    "CUWQCWOQC",
    "CUNQWCUICIQIOQ"
  ];
  List Time = [
    "10:59",
    "10:30",
    "9:45",
    "9:10",
    "9:00",
    "8:45",
    "8:30",
    "8:10",
    "7:52",
    "7:00",
    "6:37"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.edit),
          backgroundColor: Colors.blue,
          shape: CircleBorder(side: BorderSide(width: 0))),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text("Y"),
                      ),
                      trailing: Icon(CupertinoIcons.moon_stars_fill,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ListTile(
                        leading: Text("Yasir",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        trailing: Icon(CupertinoIcons.chevron_down,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )),
            ListTile(onTap: (){
              Navigator.pushNamed(context, "/route1");
            },
              leading: Icon(Icons.people),
              title: Text("New Group"),
            ),
            ListTile(onTap: (){
              Navigator.pushNamed(context, "/route2");
            },
              leading: Icon(Icons.person),
              title: Text("Contacts"),
            ),
            ListTile(onTap: (){
              Navigator.pushNamed(context, "/route3");
            },
              leading: Icon(Icons.call),
              title: Text("Calls"),
            ),
            ListTile(onTap: (){
              Navigator.pushNamed(context,"/route4");
            },
              leading: Icon(Icons.location_history_outlined),
              title: Text("People Nearby"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text("Saved Messages"),
            ),
            ListTile(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
            },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(thickness: 1, color: Colors.black26),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Invite Friends"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Telegram Features"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text("Telegram"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.blueAccent),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
                radius: 20, backgroundImage: AssetImage(Profileim[index])),
            title: Text(Contactname[index],
                style: TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(Messagesub[index]),
            trailing:
                Text(Time[index], style: TextStyle(color: Colors.greenAccent)),
          );
        },
        itemCount: Contactname.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 0,
            color: Colors.black38,
          );
        },
      ),
    );
  }
}
