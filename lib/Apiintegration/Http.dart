import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter1/Apiintegration/ModelClass.dart';
import 'package:http/http.dart' as http;

class myHttp extends StatefulWidget {
  const myHttp({super.key});

  @override
  State<myHttp> createState() => _myHttpState();
}

class _myHttpState extends State<myHttp> {
  Future<MyModelclass> Showdata() async {
    var res = await http.get(Uri.parse("https://dummyjson.com/products"));
    if(res.statusCode==200) {
      var data = MyModelclass.fromJson(jsonDecode(res.body));
      return data;
    }else{
      throw Exception("error");
    }
    print(res.body);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Showdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: Showdata(),
      builder: (context, AsyncSnapshot<MyModelclass> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("404 PAGE NOT FOUND"));
        } else if (!snapshot.hasData ) {
          return Center(child: Text("has no data"));
        } else if (snapshot.hasData)  {
          List<Products>? myproduct = snapshot.data!.products;
          return ListView.builder(
              itemCount: myproduct?.length,
              itemBuilder: (context, int index) {
               return Container(
                 child: Column(
                   children: [
                     Text("${myproduct?[index].title}"),
                     Text("${myproduct?[index].description}"),
                     Text("${myproduct?[index].price}"),
                     Image.network("${myproduct?[index].images!.last}"),
                   ],
                 ),
               );
              });
        }else{
        return Center(child: Text("Some other error"));}
      },
    ));
  }
}
