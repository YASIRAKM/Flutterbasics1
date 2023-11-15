import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<File> IMage=[];
  Future<void> Gallery() async{
   var PhotoS= await ImagePicker().pickImage(source: ImageSource.gallery);
   setState(() {
     IMage.add(File(PhotoS!.path));
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (_ ,int index){
        if(index >= IMage.length){
          return InkWell(onTap: (){
            Gallery();
          },child: Container(child: Icon(Icons.add),width: 200,height: 100,));
        }else{
          return Container(width: 200,height: 100,child:Image(image: FileImage(IMage[index]),),);
        }
      },itemCount: IMage.length+1)
      ,
    );
  }
}
