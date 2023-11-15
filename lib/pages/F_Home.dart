import 'package:flutter1/basics/S_loginpage.dart';
import 'package:flutter/material.dart';

import '../basics/Seperated home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [IconButton(onPressed: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Des5()));
    }, icon: Icon(Icons.logout))],),
      backgroundColor: Colors.blue[200],
      body: //Column(children: [
        // Stack(children: [
        //   Positioned(
        //     right: -20,
        //     bottom: -15,
        //     child: CircleAvatar(
        //       radius: 70,
        //       backgroundColor: Colors.blue[100],
        //       child: Container(
        //         height: 130,
        //         width: 130,
        //         decoration: BoxDecoration(
        //             color: Colors.blue[100],
        //             borderRadius: BorderRadius.circular(55)),
        //       ),
        //     ),
        //   ),
        // ]),
        // Stack(children: [
        //   Positioned(
        //     top: -15,
        //     left: -20,
        //     child: CircleAvatar(
        //       radius: 70,
        //       backgroundColor: Colors.blue[100],
        //       child: Container(
        //         height: 130,
        //         width: 130,
        //         decoration: BoxDecoration(
        //             color: Colors.blue[100],
        //             borderRadius: BorderRadius.circular(55)),
        //       ),
        //     ),
        //   ),
        // ]),
        // Stack(children: [
        //   Positioned(
        //     top: 170,
        //     right: -5,
        //     child: Container(
        //       child: CircleAvatar(
        //         backgroundColor: Colors.blue[100],
        //         radius: 270,
        //         child: Container(
        //           height: 300,
        //           width: 200,
        //           color: Colors.blue[100],
        //         ),
        //       ),
        //     ),
        //   ),
        // ]),
        ListView(
          children: [
            ListTile(leading: Text("Johny's Family"),subtitle: Text("Home"),trailing: Icon(Icons.chat_rounded),),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Card1(images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VJkmjipOFKpzzlIx120VwLYfMd88AK08Gw&usqp=CAU",Texts:"Calender  March,Wesnesday" ),
                  Card1(images: "https://cdn.pixabay.com/photo/2013/07/13/14/05/location-162102_640.png",Texts:"Location" ),
                  Card1(images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4rSNAHIjAKc9k5xXY4df9VD9Exe2S1JZPpw&usqp=CAU",Texts:"To do" ),
                ],),
              ),Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Card1(images: "https://cdn-icons-png.flaticon.com/512/1261/1261163.png",Texts:"Groceries" ),
                  Card1(images: "https://cdn4.vectorstock.com/i/1000x1000/27/78/yellow-bell-vector-23262778.jpg",Texts:"Activity" ),
                  Card1(images: "https://www.pngitem.com/pimgs/m/1-12226_transparent-android-settings-icon-png-settings-icon-blue.png",Texts:"Settings" ),
                ],),
              ),
            ],)
          ],
        )
      //]),


    );
  }
}
