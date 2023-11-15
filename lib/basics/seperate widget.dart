import 'package:flutter/material.dart';

class Mywidget extends StatelessWidget {
  final String cardtext;
  final IconData icon;
  final Color mycolor;

  const Mywidget(
      {super.key, required this.cardtext, required this.icon, required this.mycolor});

  @override
  Widget build(BuildContext context) {

    return Card(color: mycolor,elevation: 20,shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(width: 170,height: 120,
        child: Row(children: [
          Icon(this.icon, size: 40),
          SizedBox(width: 15,),
          Expanded(child: Text(this.cardtext, style: TextStyle(fontSize: 22),))
        ],),
      ),
    );
  }
}
