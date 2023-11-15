import 'package:flutter/material.dart';

class Mystream1 extends StatefulWidget {
  const Mystream1({super.key});

  @override
  State<Mystream1> createState() => _Mystream1State();
}

class _Mystream1State extends State<Mystream1> {
  Stream<int> mystr=Stream.periodic(Duration(seconds: 2), (i)=>i);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: StreamBuilder(stream: mystr, builder: (context, AsyncSnapshot<int> snapshot ){
        return Text("Counter = ${snapshot.data}");
      })),
    );
  }
}
