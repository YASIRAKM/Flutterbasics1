import 'package:flutter/material.dart';

class Des6 extends StatefulWidget {
  const Des6({super.key});

  @override
  State<Des6> createState() => _Des6State();
}

class _Des6State extends State<Des6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: Stack(
        children: [
          Positioned(
              top: 80,
              child: Container(
                height: 800,
                width: 395,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              )),
          Positioned(
              top: 180,
              left: 150,
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                radius: 50,
                child: Text("LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.w900)),
              )),
          Positioned(
              top: 90,
              left: 10,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.greenAccent,
                child: Icon(Icons.no_drinks_rounded),
              )),
          Positioned(
            top: 350,
            left: 10,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 40,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.teal)),
                      child: TextField(
                          decoration: InputDecoration(
                              label: Text("EMAIL",
                                  style: TextStyle(color: Colors.teal[300])),
                              prefixIcon: Icon(Icons.mail),
                              prefixIconColor: Colors.teal[300]))),
                ),
                Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.teal)),
                    child: TextField(
                        decoration: InputDecoration(
                            label: Text("PASSWORD",
                                style: TextStyle(color: Colors.teal[300])),
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.teal[300]))),
              ],
            ),
          ),
          Positioned(
              top: 550,
              left: 20,
              child: Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.teal[400]),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                      child: Center(child: Text("LOGIN")))))
        ],
      ),
    );
  }
}
