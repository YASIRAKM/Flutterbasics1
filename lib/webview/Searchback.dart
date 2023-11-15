import 'dart:io';

import 'package:flutter1/webview/Search2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Searchs extends StatefulWidget {
  const Searchs({super.key});

  @override
  State<Searchs> createState() => _SearchsState();
}

class _SearchsState extends State<Searchs> {
  TextEditingController Ser = TextEditingController();
  String cp = "";
  File? ima;

  Future<void> Ima() async {
    var IMage = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      ima = File(IMage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.search), title: Text("SEARCH")),
      body: TextField(
        controller: Ser,
        decoration: InputDecoration(
          prefixIcon: InkWell(
            child: Icon(Icons.camera_enhance_rounded),
            onTap: () {
              Ima();
            },
          ),
          labelText: "SEARCH",
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  cp = Ser.text;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Sera(
                              url: cp,
                            )));
              },
              child: Icon(Icons.search)),
        ),
      ),
    );
  }
}
