import 'package:flutter/material.dart';
import 'package:flutter1/Newsfield/Sports%20news.dart';
import 'package:flutter1/Newsfield/TRENDINGNEWS.dart';
import 'package:flutter1/Newsfield/businesnews.dart';

class NewsField extends StatefulWidget {
  const NewsField({super.key});

  @override
  State<NewsField> createState() => _NewsFieldState();
}

class _NewsFieldState extends State<NewsField> {
  int _Selectedn = 0;
  List screens = [News(), Businews(), Sportsnews()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("NEWS HEADLINES", style: TextStyle(color: Colors.teal)),
          backgroundColor: Colors.black),
      body: screens[_Selectedn],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up), label: "Trending"),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: "Business"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer), label: "Sports"),
        ],
        onTap: (index) {
          setState(() {
            _Selectedn = index;
          });
        },
        elevation: 5,
        currentIndex: _Selectedn,
        selectedFontSize: 18,
        selectedItemColor: Colors.teal,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.cyan,
        iconSize: 30,
      ),
    );
  }
}
