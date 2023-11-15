import 'package:flutter/material.dart';

class Anime3 extends StatefulWidget {
  const Anime3({super.key});

  @override
  State<Anime3> createState() => _Anime3State();
}

class _Anime3State extends State<Anime3> {
  double l = 100;
  bool _obs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: 200,
            height: 600,
            child: Stack(
              children: [
                AnimatedPositioned(
                    left: l,
                    duration: Duration(seconds: 1),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.blue),
                    )),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "enter",
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        _obs=!_obs;
                      });
                    },
                    child: _obs?Icon(
                      Icons.visibility_off,
                    ):Icon(Icons.visibility))),
            obscureText: !_obs,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  l = 50;
                });
              },
              child: Text("PRESS")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  l = 150;
                });
              },
              child: Text("PRESS")),
        ],
      ),
    );
  }
}
