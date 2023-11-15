import 'package:flutter1/basics/Delay2.dart';
import 'package:flutter/material.dart';

class Dur extends StatefulWidget {
  const Dur({super.key});

  @override
  State<Dur> createState() => _DurState();
}

class _DurState extends State<Dur> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 7),(){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>Dur2()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("HI"),),

    );
  }
}
