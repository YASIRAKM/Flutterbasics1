import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  const Anim({super.key});

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  double h=200;
  double w=100;
  
  bool _val=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SizedBox(width: 300,height: 300,
            child: Stack(
              children: [
                AnimatedPositioned(duration: Duration(seconds: 1),top:_val?50:10 ,left:_val?70:20 ,child: Container(width:w ,height:h ,decoration: BoxDecoration(color: Colors.yellow),)),
              ],
            ),
          )),ElevatedButton(onPressed: (){
            setState(() {
              _val=!_val;
            });
          }, child: Text("PRESS"))
        ],
      ),
    );
  }
}
