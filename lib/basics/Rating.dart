import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class myRAT extends StatefulWidget {
  const myRAT({super.key});

  @override
  State<myRAT> createState() => _myRATState();
}

class _myRATState extends State<myRAT> {
  double _myrating=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Center(
        child: Column(
          children: [
            RatingBar.builder(allowHalfRating: true,itemCount: 5,itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,), onRatingUpdate: (RATE) {
              setState(() {
                _myrating=RATE!;
              });
            },),
            Text("$_myrating"),
            RatingBarIndicator(itemBuilder: (context,_)=>Icon(Icons.star),itemCount: 5,rating: _myrating,)
          ],
        ),
      ),
    ),);
  }
}
