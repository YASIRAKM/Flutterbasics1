import 'package:flutter/material.dart';

class Gnu extends StatefulWidget {
  const Gnu({super.key});

  @override
  State<Gnu> createState() => _GnuState();
}

class _GnuState extends State<Gnu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.green,
            height: 400,
            width: 250,
            child: Center(
              child: Container(
                height: 200,
                width: 100,
                child: Text(
                  "SEASM",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.white70),
                    color: Colors.black),
                padding: EdgeInsets.fromLTRB(20, 10, 5, 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
