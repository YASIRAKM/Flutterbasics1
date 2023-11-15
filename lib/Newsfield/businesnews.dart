import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter1/Newsfield/Sports%20news.dart';
import 'package:flutter1/Newsfield/TRENDINGNEWS.dart';
import 'package:flutter1/Newsfield/news%20methods.dart';
import 'package:flutter1/Newsfield/newsModel.dart';
import 'package:http/http.dart';

class Businews extends StatefulWidget {
  const Businews({super.key});

  @override
  State<Businews> createState() => _BusinewsState();
}

class _BusinewsState extends State<Businews> {
  // Future<Business>   getBnews()async{
  //   var res = await get(Uri.parse("https://newsapi.org/v2/everything?q=business&apiKey=db7c5e060c1c49188fe23e493eee3257"));
  //   if(res.statusCode==200){
  //     var data = Business.fromJson(jsonDecode(res.body));
  //     return data;
  //   }
  //   else{
  //     throw Exception("error");
  //   }
  // }
  TextEditingController _controller = TextEditingController();
  String val = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBnews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  labelText: "SEARCH",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        val = _controller.text;
                      });
                      if (val == "Sports" ||
                          val == "sports" ||
                          val == "SPORTS") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Sportsnews()));
                      } else if (val == "Trending" ||
                          val == "trending" ||
                          val == "TRENDING") {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => News()));
                      } else {
                        Text("TYPE CORRECT");
                      }
                    },
                    icon: Icon(Icons.search),
                  ))),
          bottom: Tab(
            child: Text(
              "Business :",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
          )),
      body: FutureBuilder(
          future: getBnews(),
          builder: (context, AsyncSnapshot<Business> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("has error"),
              );
            } else if (!snapshot.hasData) {
              return Center(
                child: Text("NO DATA"),
              );
            } else if (snapshot.hasData) {
              List<Articles>? Bnews = snapshot.data?.articles;
              return ListView.builder(
                  itemCount: Bnews?.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Card(
                        color: Colors.tealAccent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 10, top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("${Bnews?[index].title}",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black87),
                                    overflow: TextOverflow.ellipsis),
                              ),
                              SizedBox(width: 70),
                              Container(
                                width: 90,
                                height: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "${Bnews?[index].urlToImage}"),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: Text("ERROR"),
              );
            }
          }),
    );
  }
}
