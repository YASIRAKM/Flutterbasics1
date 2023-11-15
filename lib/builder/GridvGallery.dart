import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GridGallery extends StatefulWidget {
  const GridGallery({super.key});

  @override
  State<GridGallery> createState() => _GridGalleryState();
}

class _GridGalleryState extends State<GridGallery> {
  List<File> Ima=[];
  Future<void> Gallery() async{
    var Im=await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      Ima.add(File(Im!.path));
    });
  }
  @override
  Widget build(BuildContext context) {
    double Mediaa=MediaQuery.of(context).size.width/2;
    double Medias=MediaQuery.of(context).size.height/4;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black45,title: Text("Gallery",style: TextStyle(color: Colors.white60),)),
      body: GridView.builder(itemCount: Ima.length+1,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2,mainAxisSpacing: 3), itemBuilder: (_,int index){
        if(index>=Ima.length){
          return InkWell(onTap: (){
            Gallery();
          },child: Container(height:Medias,width: Mediaa,child: Icon(Icons.add,size: 30),));
        }
        else{
          return Container(height: Medias,width: Mediaa,child: Image.file(Ima[index]),);
        }
      }),
    );
  }
}
