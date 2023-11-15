import 'package:flutter1/basics/DESIGN.dart';
import 'package:flutter1/basics/S_loginpage.dart';
import 'package:flutter/material.dart';

class MyTab2 extends StatefulWidget {
  const MyTab2({super.key});

  @override
  State<MyTab2> createState() => _MyTab2State();
}

class _MyTab2State extends State<MyTab2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: TabBar(tabs: [
          Tab(child: Text("SignUp",style: TextStyle(color: Colors.black)),),
          Tab(child: Text("Login",style: TextStyle( color: Colors.black)),),
        ]),
        body: TabBarView(
            children: [
              Des5(),
              Des()

            ],
        ),
      ),
    );
  }
}
