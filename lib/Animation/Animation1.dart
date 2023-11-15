import 'package:flutter/material.dart';

class Anime1 extends StatefulWidget {
  const Anime1({super.key});

  @override
  State<Anime1> createState() => _Anime1State();
}

class _Anime1State extends State<Anime1> with SingleTickerProviderStateMixin{
  late Animation anime;

  late AnimationController animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation =AnimationController(vsync: this, duration: Duration(seconds: 3),);
    anime= Tween(begin:-1.0,end: 0.0 ).animate(CurvedAnimation(parent: animation, curve:Curves.fastOutSlowIn));
    animation.forward();
  }
  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    return AnimatedBuilder(animation: animation, builder: (BuildContext context,widget){
      return Scaffold(
        body: Transform(transform: Matrix4.translationValues ( width, 0.0, 0.0),child: Container(child: Text("LOGIN"),)),
      );
    });
  }
}
