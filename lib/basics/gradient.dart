import 'package:flutter/material.dart';

class ColorG extends StatefulWidget {
  const ColorG({super.key});

  @override
  State<ColorG> createState() => _ColorGState();
}

class _ColorGState extends State<ColorG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: InkWell(
            onTap: () {
              showDialog(context:context,builder:(BuildContext context)=>AlertDialog(title: Text("ALERT"),actions: [IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.delete))],));
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (_) => Mysec()));
            },
            child: Hero(
                tag: "Decoration",
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.yellow, Colors.green])),
                )),
          )),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => mythird()));
            },
            child: Hero(tag: "IC", child: Icon(Icons.arrow_right_alt)),
          )
        ],
      ),
    );
  }
}

class Mysec extends StatefulWidget {
  const Mysec({super.key});

  @override
  State<Mysec> createState() => _MysecState();
}

class _MysecState extends State<Mysec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Hero(
        tag: "Decoration",
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.white, Colors.purple])),
        ),
      )),
    );
  }
}

class mythird extends StatefulWidget {
  const mythird({super.key});

  @override
  State<mythird> createState() => _mythirdState();
}

class _mythirdState extends State<mythird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Hero(tag: "IC", child: Icon(Icons.arrow_forward))),
    );
  }
}
