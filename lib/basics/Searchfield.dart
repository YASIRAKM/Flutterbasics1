import 'dart:io';

import 'package:flutter1/webview/Search2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("HOME PAGE"), leading: Icon(Icons.home)),
      body: Stack(
        children: [
          Positioned(
              left: -200,
              top: -250,
              child: CircleAvatar(
                  radius: 200, backgroundColor: Colors.yellow[200])),
          Positioned(
              bottom: -250,
              right: -200,
              child: CircleAvatar(
                  radius: 200, backgroundColor: Colors.yellow[200])),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, right: 150),
                  child: Text("SEARCH HERE:", style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 0)),
                    child: TextField(
                        style: TextStyle(fontSize: 20),
                        controller: Ser,
                        decoration: InputDecoration(
                            border: InputBorder.none,
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
                            prefixIcon: InkWell(
                              child: Icon(Icons.camera_enhance_rounded),
                              onTap: () {
                                Ima();
                              },
                            ),
                            labelText: "SEARCH")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text("Select Language:", style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 10),
                  child: Row(
                    children: [
                      SelectableText("ENGLISH"),
                      SizedBox(
                        width: 20,
                      ),
                      SelectableText("HINDI"),
                      SizedBox(
                        width: 20,
                      ),
                      SelectableText("ARABIC"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 115, top: 10),
                  child: Row(
                    children: [
                      SelectableText("MALAYALAM"),
                      SizedBox(
                        width: 20,
                      ),
                      SelectableText("TAMIL")
                    ],
                  ),
                ),
                SizedBox(height: 200,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
