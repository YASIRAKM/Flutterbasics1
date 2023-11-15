import 'package:flutter/material.dart';

class Des3 extends StatefulWidget {
  const Des3({super.key});

  @override
  State<Des3> createState() => _Des3State();
}

class _Des3State extends State<Des3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -210,
            top: -300,
            child: Container(
              height: 1135,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(400)),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80)),
                    child: Center(
                        child: Text(
                      "G O",
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 92,
                          fontWeight: FontWeight.w900),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 3),

                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )),
                  ),
                ),

              ],
            ),
          ),
          Positioned(top: 200,right: 80,
              child: CircleAvatar(backgroundColor: Colors.white,radius: 30,)),
          Positioned(
              top: 270,
              right: 130,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
              )),
        ],
      ),
    );
  }
}
