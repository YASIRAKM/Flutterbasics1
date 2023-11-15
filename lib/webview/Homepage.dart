

import 'package:flutter1/webview/Facebook.dart';
import 'package:flutter1/whatsapp/whatsapp.dart';
import 'package:flutter1/basics/RATINGPAGE.dart';
import 'package:flutter1/webview/amAZON.dart';
import 'package:flutter1/webview/flIPKAR.dart';
import 'package:flutter1/webview/htoinsta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _amrate = 0;
  double _flrate = 0;
  double _fbrate = 0;
  double _inrate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("link to amazon:"),
          Container(
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal),
                ),
                onPressed: () {
                  Navigator.push(
                      (context), MaterialPageRoute(builder: (_) => Ama()));
                },
                child: Row(
                  children: [
                    Text("AMAZON"),
                    SizedBox(
                        height: 30,
                        width: 30,
                        child:
                            Image(image: NetworkImage("https://rb.gy/73q1p")))
                  ],
                )),
          ),
          Row(children: [
            Text("RATE AMAZON:"),
            RatingBar.builder(
                itemCount: 5,
                allowHalfRating: true,
                itemBuilder: (context, _) =>
                    Icon(Icons.star_purple500_outlined, color: Colors.amber),
                onRatingUpdate: (value)async {
                  SharedPreferences pref=await SharedPreferences.getInstance();
                  setState(() {
                    _amrate = value!;
                  });
                  pref.setDouble("amz", _amrate);
                })
          ]),
          Text("link to flipkart:"),
          SizedBox(
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                onPressed: () {
                  Navigator.push(
                      (context), MaterialPageRoute(builder: (_) => Flip()));
                },
                child: Row(
                  children: [
                    Text("FLIPKART"),
                    SizedBox(
                        height: 30,
                        width: 30,
                        child:
                            Image(image: NetworkImage("https://rb.gy/9n7mo")))
                  ],
                )),
          ),
          Row(children: [
            Text("RATE FLIPKART:"),
            RatingBar.builder(
                itemCount: 5,
                allowHalfRating: true,
                itemBuilder: (context, _) =>
                    Icon(Icons.star_purple500_outlined, color: Colors.amber),
                onRatingUpdate: (value)async {
                  SharedPreferences pref=await SharedPreferences.getInstance();
                  setState(() {
                    _flrate = value!;
                  });
                  pref.setDouble("_flip", _flrate);
                })
          ]),
          Text("link to facebook:"),
          SizedBox(
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                onPressed: () {
                  Navigator.push(
                      (context), MaterialPageRoute(builder: (_) => Facebo()));
                },
                child: Row(
                  children: [
                    Text("FACEBOOK"),
                    SizedBox(
                        width: 30,
                        height: 30,
                        child:
                            Image(image: NetworkImage("https://rb.gy/yqgdq")))
                  ],
                )),
          ),
          Row(children: [
            Text("RATE FACEBOOK:"),
            RatingBar.builder(
                itemCount: 5,
                allowHalfRating: true,
                itemBuilder: (context, _) =>
                    Icon(Icons.star_purple500_outlined, color: Colors.amber),
                onRatingUpdate: (value)async {
                  SharedPreferences pref=await SharedPreferences.getInstance();
                  setState(() {
                    _fbrate = value!;
                  });
                  pref.setDouble("_fb",_fbrate);
                })
          ]),
          Text("link to instagram:"),
          SizedBox(
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                onPressed: () {
                  Navigator.push(
                      (context), MaterialPageRoute(builder: (_) => InstaS()));
                },
                child: Row(
                  children: [
                    Text("INSTAGRAM"),
                    SizedBox(
                        width: 30,
                        height: 30,
                        child:
                            Image(image: NetworkImage("https://rb.gy/f1k6n")))
                  ],
                )),
          ),
          Row(children: [
            Text("RATE INSTA:"),
            RatingBar.builder(
                itemCount: 5,
                allowHalfRating: true,
                itemBuilder: (context, _) =>
                    Icon(Icons.star_purple500_outlined, color: Colors.amber),
                onRatingUpdate: (value)async {
                  SharedPreferences pref=await SharedPreferences.getInstance();
                  setState(() {
                    _inrate = value!;
                  });
                  pref.setDouble("_inst", _inrate);
                })
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: ElevatedButton(onPressed: (){
              Navigator.push((context), MaterialPageRoute(builder: (_)=>ratingP()));
            }, child: Text("RATINGS")),
          )
        ],
      ),
    );
  }
}
