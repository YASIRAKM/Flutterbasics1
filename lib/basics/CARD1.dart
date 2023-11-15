
import 'package:flutter/material.dart';

import 'seperate widget.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(
      child: ListView(
        children: [
          Text("menu1"),
          Text("menu2"),
          Text("menu3"),
          Text("menu4"),
        ],
      ),
    ),
      appBar: AppBar(backgroundColor: Colors.white),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Mywidget(cardtext: 'Heart shaker', icon: Icons.home, mycolor: Colors.blueAccent,),
                  Mywidget(cardtext: 'Heart shaker', icon: Icons.linked_camera_sharp, mycolor: Colors.green,),
                  Mywidget(cardtext: 'Heart shaker', icon:Icons.leak_remove_rounded , mycolor: Colors.redAccent,),
                  Mywidget(cardtext: 'Heart shaker', icon: Icons.call, mycolor: Colors.purple,),
                  Mywidget(cardtext: 'Heart shaker', icon: Icons.map_sharp, mycolor: Colors.orangeAccent,),
                  Mywidget(cardtext: 'Heart shaker', icon: Icons.mic_off, mycolor:Colors.pinkAccent,),

                ],),
              ),SizedBox(width: 17,),
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Mywidget(cardtext: 'Heart shaker', icon:Icons.notification_important , mycolor: Colors.orange,),
                Mywidget(cardtext: 'Heart shaker', icon:Icons.local_activity , mycolor: Colors.pink,),
                Mywidget(cardtext: 'Heart shaker', icon: Icons.book_rounded, mycolor: Colors.indigo,),
                Mywidget(cardtext: 'Heart shaker', icon: Icons.email_rounded, mycolor: Colors.teal,),
                Mywidget(cardtext: 'Heart shaker', icon: Icons.memory_rounded, mycolor: Colors.deepOrangeAccent,),
                Mywidget(cardtext: 'Heart shaker', icon: Icons.note_add, mycolor: Colors.green,),

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
