import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bott extends StatefulWidget {
  const Bott({super.key});

  @override
  State<Bott> createState() => _BottState();
}

class _BottState extends State<Bott> {
  Future<void> showBottum()async{
    showModalBottomSheet(context: context, builder: (ctx1) {
      return InkWell(

        child: Container(width: 400,height: 600,color: Colors.blue,child: ElevatedButton(child: Icon(CupertinoIcons.plus_square),onPressed: (){
          Navigator.of(context).pop();
        },)),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
      children: [
        ButtonBar(children: [
          Text("sS"),
          Text("sCS"),

        ],),
        IconButton(onPressed: (){
          showBottum();
        }, icon: Icon(CupertinoIcons.plus))
      ],
    )),

    );
  }
}

