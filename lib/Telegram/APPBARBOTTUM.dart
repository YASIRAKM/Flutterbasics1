import 'package:flutter/material.dart';

class MyTAB extends StatefulWidget {
  const MyTAB({super.key});

  @override
  State<MyTAB> createState() => _MyTABState();
}

class _MyTABState extends State<MyTAB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(bottom: TabBar(tabs: [
          Tab(child: Text("HOME"),),
          Tab(child: Text("HOME2"),),
        ])),
      ),
    );
  }
}
