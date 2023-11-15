import 'dart:io';

import 'package:flutter/material.dart';

class Des9 extends StatefulWidget {
  const Des9({super.key});

  @override
  State<Des9> createState() => _Des9State();
}

class _Des9State extends State<Des9> {
  List Item = ["Shoe","Kurta","Bottum wear","Denim Shirt"];
  List Images = ["https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-web-donut-19090.jpg&fm=jpg",
    "https://cdn.pixabay.com/photo/2018/09/14/16/52/kurta-3677577_1280.jpg",
    "https://www.beziddi.com/uploaded-files/thumb-cache/thumb_600_600_joggers_category_imageffqd.jpg",
    "https://houseofstori.com/cdn/shop/products/CORE-32759-B_1_600x.jpg?v=1684411008"];
  List prices = ["399","250","500","600"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.roundabout_left,color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(radius: 20,
            child: Image.network(
                "https://media.istockphoto.com/id/1289220545/photo/beautiful-woman-smiling-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=qmOTkGstKj1qN0zPVWj-n28oRA6_BHQN8uVLIXg0TF8="),
          )
        ],
        title: Text("Cart",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(height: 60,
                child: const Row(
                    children: [SizedBox(width: 5,),
                  Icon(Icons.shopping_cart_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 30,top: 15),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 115),
                          child: Text(
                            "Shopping Cart",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w900,fontSize: 18),
                          ),
                        ),SizedBox(height: 3,),
                        Padding(
                          padding: EdgeInsets.only(right: 28),
                          child: Text(
                            "verify your quantity and checkout",
                            style: TextStyle(color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              );
            } else if (index == Item.length+1) {
              return Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("subtotal",style: TextStyle(fontWeight: FontWeight.w900,)),
                        SizedBox(
                          width: 260,
                        ),
                        Text("54")
                      ],
                    ),
                    SizedBox(height: 15,),
                    const Row(
                      children: [
                        Text("TAX(20%)",style: TextStyle(fontWeight: FontWeight.w900)),
                        SizedBox(
                          width: 250,
                        ),
                        Text("20")
                      ],
                    ),SizedBox(height: 15,),
                    Container(
                      child: Center(child: Text("CHECKOUT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                      width: 380,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              );
            } else
              return Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.network(Images[index-1]),
                  ),SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text(Item[index-1],style: TextStyle(fontWeight: FontWeight.w900)),SizedBox(height: 7,), Text(prices[index-1])],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Column(
                      children: [
                        Icon(Icons.add_rounded),
                        SizedBox(height: 5,),
                        Text("1"),
                        SizedBox(height: 5,),
                        Icon(Icons.linear_scale_sharp)
                      ],
                    ),
                  )
                ],
              );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 3,
            );
          },
          itemCount: Item.length+2 ),
    );
  }
}
