import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
final String images;
final String Texts;
  const Card1({super.key, required this.images, required this.Texts});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,color: Colors.black38,
      child: Container(height: 150,width: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(height: 70,width: 70,
                  child: Image(image: NetworkImage(this.images))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Expanded(child: Text(this.Texts,style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
