import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Post1 extends StatefulWidget {
  const Post1({super.key});

  @override
  State<Post1> createState() => _Post1State();
}

class _Post1State extends State<Post1> {
  PostDaata() async {
    var response = await http
        .post(Uri.parse("http://192.168.1.38:4000/trial_post"), body: {
      'name': 'YASIR',
      'password': '12345678',
      'phone': '78945123',
      'email': 'yasir@gmail.com'
    });
    if (response.statusCode == 200) {
      var data = await response.body;
      print(data);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                PostDaata();
              },
              child: Text("post"))),
    );
  }
}
