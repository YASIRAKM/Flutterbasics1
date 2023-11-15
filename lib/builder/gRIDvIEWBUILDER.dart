import 'package:flutter/material.dart';

class GridBuild extends StatefulWidget {
  const GridBuild({super.key});

  @override
  State<GridBuild> createState() => _GridBuildState();
}

class _GridBuildState extends State<GridBuild> {
  List<Color> myColor=[Colors.black,Colors.blue,Colors.cyan,Colors.green,Colors.orange,Colors.yellow,Colors.red,Colors.white,Colors.indigo];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 2,mainAxisSpacing: 3), itemBuilder: (context,int index){
        return Container(color:myColor[index] ,);
      }
      ,itemCount:myColor.length ,),
    );
  }
}
