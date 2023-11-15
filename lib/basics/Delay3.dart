import 'package:flutter1/basics/Delay2.dart';
import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
 int i=20;
void Press(){
  Future.delayed(Duration(seconds: 2),(){
    if(i>0){
    setState(() {
      i--;

    });
    Press();
    }

    else{
      Navigator.push(context, MaterialPageRoute(builder: (_)=>Dur2()));
    }
  });
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Press();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Center(
        child: Column(children: [

          Text("$i")
        ]),
      ),
    );
  }
}
