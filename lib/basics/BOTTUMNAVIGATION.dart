import 'package:flutter/material.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {
  late PageController pgc;
  int myindex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pgc=PageController(initialPage: myindex);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.back_hand_sharp),label: ""),
        ],onTap: (index){
          setState(() {
            myindex=index;
            pgc.jumpToPage(index);
          });
      },currentIndex: myindex,
      ),
      body: PageView(controller: pgc,
          children: [
        Center(child: Text("s")),
        Center(child: Text("dse")),

      ]),
    );
  }
}
