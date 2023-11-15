import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ratingP extends StatefulWidget {
  const ratingP({super.key});

  @override
  State<ratingP> createState() => _ratingPState();
}

class _ratingPState extends State<ratingP> {
  double _amrate = 0;
  double _flrate = 0;
  double _fbrate = 0;
  double _inrate = 0;

  Future<void> getdata()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      _amrate=pref.getDouble("amz")??0;
      _flrate=pref.getDouble("_flip")??0;
      _fbrate=pref.getDouble("_fb")??0;
      _inrate=pref.getDouble("_inst")??0;

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RATINGS"),),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [Text("AMAZON RATING:"),RatingBarIndicator(itemBuilder: (context,_)=>Icon(Icons.star_purple500_outlined,color: Colors.amberAccent,),itemCount: 5,rating: _amrate,)],),
          Row(children: [Text("FLIPKART RATING:"),RatingBarIndicator(itemBuilder: (context,_)=>Icon(Icons.star_purple500_outlined,color: Colors.amberAccent,),itemCount: 5,rating: _flrate,)],),
          Row(children: [Text("FACEBOOK RATING:"),RatingBarIndicator(itemBuilder: (context,_)=>Icon(Icons.star_purple500_outlined,color: Colors.amberAccent,),itemCount: 5,rating: _fbrate,)],),
          Row(children: [Text("INSTA RATING:"),RatingBarIndicator(itemBuilder: (context,_)=>Icon(Icons.star_purple500_outlined,color: Colors.amberAccent,),itemCount: 5,rating: _inrate,)],),
        ],
      )

    );
  }
}
