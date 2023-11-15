import 'package:flutter/material.dart';

class CondWidg extends StatefulWidget {
  const CondWidg({super.key});

  @override
  State<CondWidg> createState() => _CondWidgState();
}

class _CondWidgState extends State<CondWidg> {
  bool x = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(onPressed: (){
            setState(() {
              x=!x;
            });
          },child: x?Text("LOGGED IN"):Text("LOGGED OUT"))
      ),
    );
  }
}
