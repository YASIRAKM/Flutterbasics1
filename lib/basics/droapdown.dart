import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  List _list=[ 'male','female','other'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: DropdownButtonFormField(hint: Text("gender"),items: _list.map((e) {
      return DropdownMenuItem(value: e,child: Text(e));
    }).toList(), onChanged: (value){
      print(value);
    })),

    );
  }
}
