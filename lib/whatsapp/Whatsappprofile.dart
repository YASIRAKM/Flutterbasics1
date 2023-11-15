import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WhatPro extends StatefulWidget {
  const WhatPro({super.key});

  @override
  State<WhatPro> createState() => _WhatProState();
}

class _WhatProState extends State<WhatPro> {
  File? Dp;

  Future<void> ProFile() async {
    var PHoto = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      Dp = File(PHoto!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(Icons.arrow_back),
        title: Text("Profile", style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          // Container(
          //   height: 300,
          //   child: Dp == null
          //       ? CircleAvatar(
          //           child: Icon(
          //             Icons.person,
          //             size: 30,
          //           ),
          //           radius: 50,
          //           backgroundColor: Colors.grey,
          //         )
          //       : CircleAvatar(backgroundImage: FileImage(Dp!)),
          // ),
          Stack(
            children: [
              Center(
                  child: Dp == null
                      ? CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.black38,
                          ),
                        )
                      : CircleAvatar(
                          radius: 80,
                          backgroundImage: FileImage(Dp!),
                        )),
              Positioned(
                  top: 110,
                  left: 230,
                  child: CircleAvatar(
                    radius: 25,
                    child: InkWell(onTap: (){
                      ProFile();
                    },
                        child: Icon(Icons.camera_alt, color: Colors.white)),
                    backgroundColor: Colors.teal[300],
                  ))
            ],
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name", style: TextStyle(color: Colors.grey)),
            subtitle: Text("YASIR",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.edit),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Expanded(
                child: Text(
              "This is not your username or pin. This name will be visible to your WhatsAppp contacts",
              style: TextStyle(color: Colors.grey),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 20),
            child: Divider(),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About", style: TextStyle(color: Colors.grey)),
            subtitle: Text("Hey there! I am using Whatsapp.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            trailing: Icon(
              Icons.edit,
              color: Colors.teal,
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 70, ),
            child: Divider(),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone", style: TextStyle(color: Colors.grey)),
            subtitle: Text("+91 9859289686",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),

          )

          // Container(
          //   decoration: BoxDecoration(color: Colors.grey),
          //   height: 100,
          //   child: Expanded(
          //     child: Text(
          //         "This is not your username or pin.This name will be visible to your whatsapp contact  "),
          //   ),
          // ),
        ],
      ),
    );
  }
}
