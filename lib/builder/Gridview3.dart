import 'package:flutter/material.dart';

class GridView3 extends StatefulWidget {
  const GridView3({super.key});

  @override
  State<GridView3> createState() => _GridView3State();
}

class _GridView3State extends State<GridView3> {
  List Images = [
    "https://rb.gy/ar0ez",
    "https://rb.gy/hw9pc",
    "https://rb.gy/atlfi",
    "https://t.ly/N-9uL",
    "https://t.ly/sc65p",
    "https://t.ly/2X7Zj"
  ];
  List Texts = ["DVDSC", "scACAS", "asCCA", "hajskas", "sasdpew", "sascla"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"), backgroundColor: Colors.pink),
      body: SafeArea(
        child: GridView.builder(
            itemCount: Images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 1),
            itemBuilder: (_, index) {
              return Stack(
                children: [
                  Positioned(
                      left: 5,
                      top: 5,
                      child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(Images[index]))))),
                  Positioned(
                    top: 100,
                    left: 8,
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(color: Colors.black45),
                      height: 40,
                      child: Center(
                        child: Text(Texts[index],
                            style: TextStyle(color: Colors.white60)),
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
