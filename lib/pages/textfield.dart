import 'package:flutter/material.dart';

class Txtfld extends StatefulWidget {
  const Txtfld({super.key});

  @override
  State<Txtfld> createState() => _TxtfldState();
}

class _TxtfldState extends State<Txtfld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: 150,
                    child: TextField(
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),label: Text("NAME")),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: 150,
                    child: TextField(
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),label: Text("EMAIL")),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: 150,
                    child: TextField(
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),label: Text("PLACE")),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: 150,
                    child: TextField(
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),label: Text("STATE")),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
