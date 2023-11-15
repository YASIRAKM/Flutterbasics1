import 'package:flutter/material.dart';

class Fonts extends StatefulWidget {
  const Fonts({super.key});

  @override
  State<Fonts> createState() => _FontsState();
}

class _FontsState extends State<Fonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HOME",style: TextStyle(fontFamily: "insta" )),
      ),

    );
  }
}
