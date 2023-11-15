import 'package:flutter/material.dart';

class Anime2 extends StatefulWidget {
  const Anime2({super.key});

  @override
  State<Anime2> createState() => _Anime2State();
}

class _Anime2State extends State<Anime2> {
  bool _val = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(
          child: SizedBox(
            width: 400,
            height: 700,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: _val ? -50: 50,left: 150,
                  duration: Duration(seconds: 3),
                  child:CircularProgressIndicator()
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {

              setState(() {
                _val = !_val;
              });
              Future.delayed(Duration(seconds: 3),(){
                setState(() {
                  _val=!_val;
                });
              });
            },
            child: _val ? Text("Refresh") : Text("Hide")),
      ]),
    );
  }
}
