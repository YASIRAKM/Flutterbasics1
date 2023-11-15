import 'package:flutter/material.dart';

class ChessB extends StatefulWidget {
  const ChessB({super.key});

  @override
  State<ChessB> createState() => _ChessBState();
}

class _ChessBState extends State<ChessB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
      children: [
        Container(color: Colors.black,),
        Container(color: Colors.white,),
        Container(color: Colors.black,),
        Container(color: Colors.white,),
        Container(color: Colors.white,),
        Container(color: Colors.black,),
        Container(color: Colors.white,),
        Container(color: Colors.black,),
        Container(color: Colors.black,),
        Container(color: Colors.white,),
        Container(color: Colors.black,),
        Container(color: Colors.white,),
        Container(color: Colors.white,),
        Container(color: Colors.black,),
        Container(color: Colors.white,),
        Container(color: Colors.black,),
      ],
      ),
    );
  }
}
