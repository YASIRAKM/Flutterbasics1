import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class GmailS extends StatefulWidget {
  const GmailS({super.key});

  @override
  State<GmailS> createState() => _GmailState();
}

class _GmailState extends State<GmailS> {
  int mYindex = 0;
  late PageController pgC;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pgC = PageController(initialPage: mYindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.email_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),label: ""),
          ],onTap: (index) {
        mYindex=index;
        pgC.jumpToPage(index);
          },currentIndex: mYindex),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Row(
              children: [
                SizedBox(
                  width: 35,
                  height: 35,
                  child: Image.asset("assets/images/g.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Gmail"),
                )
              ],
            )),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Primary"),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Social"),
            ),
            ListTile(
              leading: Icon(Icons.local_offer_outlined),
              title: Text("Promotions"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Icon(Icons.star_outline_outlined),
              title: Text("Starred"),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Snoozed"),
            ),
            ListTile(
              leading: Icon(Icons.label_important_outline_rounded),
              title: Text("Important"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Sent"),
            ),
            ListTile(
              leading: Icon(Icons.send_and_archive_outlined),
              title: Text("Sheduled"),
            ),
            ListTile(
              leading: Icon(Icons.note_outlined),
              title: Text("Draft"),
            ),
            ListTile(
              leading: Icon(Icons.all_inbox),
              title: Text("All emails"),
            ),
            ListTile(
              leading: Icon(Icons.error_outline_outlined),
              title: Text("Spam"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Bin"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_rounded),
              title: Text("Create new"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Divider(
                thickness: 2,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.feedback_outlined),
              title: Text("Send feedback"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(labelText: "Search in mail"),
        ),
        actions: [
          CircleAvatar(
            radius: 5,
            backgroundColor: Colors.black,
          )
        ],
      ),
      body: PageView(controller: pgC,
        children: [
          ListView(children: [
            Text("PRIMARY"),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("KSACSK"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("DSSAD"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("ADSC"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("ASDC"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("ASVLVDA"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("WEQFKW"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("JSDCKS"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("MCKOV"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("CKSDIK"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("CDKJSSD"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("SALKJCO"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("KVODSVO"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("QWOPWQ"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("SWAOEIF"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("SEOIWF"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("DSFFPWEO"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("SDVSBFD"),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.black),
              title: Text("SKJFSO"),
            ),
          ]),
          Googlemeet()
        ],
      ),
    );
  }
}

class Googlemeet extends StatelessWidget {
  const Googlemeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black45,
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   title: Text("Meet", style: TextStyle(color: Colors.white)),
      //   actions: [
      //     CircleAvatar(
      //       radius: 5,
      //       backgroundColor: Colors.black,
      //     )
      //   ],
      // ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 170,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black54),color: Colors.blue),
                    child: Center(
                      child:
                          Text("New meeting", style: TextStyle(color: Colors.black26)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 170,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black54)),
                    child: Center(
                      child: Text("Join whith a code",
                          style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: CircleAvatar(radius: 80,backgroundImage: NetworkImage("https://cdn.nerdschalk.com/wp-content/uploads/2021/05/hldgmll-1.png?width=1400")),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Text(
              "Get a link that you can share",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Expanded(
                child: Text(
              "Tap New meeting to get alink that you can send to people that you want to meet with",
              style: TextStyle(color: Colors.white),
            )),
          ),

        ],
      ),
    );
  }
}
