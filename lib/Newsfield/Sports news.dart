import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter1/Newsfield/TRENDINGNEWS.dart';
import 'package:flutter1/Newsfield/businesnews.dart';
import 'package:flutter1/Newsfield/news%20methods.dart';
import 'package:flutter1/Newsfield/newsModel.dart';
import 'package:http/http.dart';

class Sportsnews extends StatefulWidget {
  const Sportsnews({super.key});

  @override
  State<Sportsnews> createState() => _SportsnewsState();
}

class _SportsnewsState extends State<Sportsnews> {
  // Future<Sports> getsnews()async{
  //   var res=await get(Uri.parse("https://newsapi.org/v2/everything?q=sports&apiKey=db7c5e060c1c49188fe23e493eee3257"));
  //   if(res.statusCode==200){
  //     var data =Sports.fromJson(jsonDecode(res.body));
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
    getsnews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      if (val=="Business"||val=="business"||val=="BUSINESS") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Businews()));
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
              "SPORTS :",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
          )),
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: getsnews(),
          builder: (context, AsyncSnapshot<Sports> snapshot) {
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
                child: Text("NO Data"),
              );
            } else if (snapshot.hasData) {
              List<Articles>? snews = snapshot.data?.articles;
              return ListView.builder(
                  itemCount: snews?.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Card(
                        color: Colors.teal,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 10, top: 20, bottom: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("${snews?[index].title}",
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
                                            "${snews?[index].urlToImage}"),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return Text("ERROR");
            }
          }),
    );
  }
}
