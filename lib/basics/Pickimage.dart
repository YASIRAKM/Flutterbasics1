import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class PickIm extends StatefulWidget {
  const PickIm({super.key});

  @override
  State<PickIm> createState() => _PickImState();
}
class _PickImState extends State<PickIm> {
  File? Images;
  Future<void> PickaImage()async{
    var ImAge=await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      Images =File(ImAge!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            PickaImage();
          }, child: Text("PRESS")),
          Images == null?Container():Image(image: FileImage(Images!))
        ],
      ),

    );
  }
}
