import 'package:flutter/material.dart';

class Xyz extends StatefulWidget {
  const Xyz({super.key});

  @override
  State<Xyz> createState() => _XyzState();
}

class _XyzState extends State<Xyz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text("FIRST"),),
        appBar: AppBar(title:Text("firts"),backgroundColor:Colors.redAccent ),
    );

  }
}







