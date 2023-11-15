import 'package:flutter/material.dart';

class Crlst extends StatefulWidget {
  const Crlst({super.key});

  @override
  State<Crlst> createState() => _CrlstState();
}

class _CrlstState extends State<Crlst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OLYMBICS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             // Positioned(left:20,child: CircleAvatar(radius: 30,backgroundColor: Colors.red,)),
             // Positioned(left: 80,child: CircleAvatar(radius: 30,backgroundColor: Colors.green,)),
             // Positioned(left: 50,top:  40,child: CircleAvatar(radius: 30,backgroundColor: Colors.blue,)),
             // Positioned(left:110,top:  40,child: CircleAvatar(radius: 30,backgroundColor: Colors.cyanAccent,)),
             // Positioned(left: 140,child: CircleAvatar(radius: 30,backgroundColor: Colors.orange,)),
            Container(width:150,child: TextField(style: TextStyle(fontSize: 25,color: Colors.black),decoration: InputDecoration(label:Text("Name") ),))

          ],
        ),
      ),
    );
  }
}
