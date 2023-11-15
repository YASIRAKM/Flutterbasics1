import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TITLE"),
      leading: Icon(Icons.access_time_filled),),
      body: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Text("CAR"),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Text("BIKE"),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Text("BUS")
                      ],
                    ),
                  ]),
              Container(height: 300, width: 60, color: Colors.red),
              Container(height: 280, width: 60, color: Colors.blue),
              Container(height: 260, width: 60, color: Colors.orange),
            ]),
      ),
    );
  }
}
