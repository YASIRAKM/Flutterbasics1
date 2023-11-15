import 'package:flutter1/Telegram/Telegram.dart';
import 'package:flutter/material.dart';

class MyNavi extends StatefulWidget {
  const MyNavi({super.key});

  @override
  State<MyNavi> createState() => _MyNaviState();
}

class _MyNaviState extends State<MyNavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Telegram()));
          },child: Text("Press Here"),),
        ),
      ),
    );
  }
}
