import 'package:flutter/material.dart';

class Cart2 extends StatefulWidget {
  const Cart2({super.key});

  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {
  List Shoe = [
    "Addidas  Gray",
    "Adidas Equipment ",
    "Puma Shoes",
    "Puma Wild Rider",
    "Up Sports Shoes",
    "Up Sports Shoes",


  ];
  List image = [
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://images.pexels.com/photos/19090/pexels-photo.jpg?cs=srgb&dl=pexels-web-donut-19090.jpg&fm=jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7_2ITNAHdEYEYFNmDnCNRsfRtyJCprkegmQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq7aTfzFpJikAmEacthKmkymeO2Pwdy6t0-w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHK77VZpi9E9KtdNbw_LzCipiY-izc6zycWA&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHK77VZpi9E9KtdNbw_LzCipiY-izc6zycWA&usqp=CAU"

  ];
  List price = ["2000","2500","1650","3210","2999","554"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading: PopupMenuButton(color: Colors.black,itemBuilder: (BuildContext context) => []),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Icon(Icons.search,color: Colors.black,),
                Icon(Icons.stacked_line_chart,color: Colors.black),
                CircleAvatar(radius: 30,backgroundColor: Colors.black,child: Text("3", style: TextStyle(color: Colors.white))),
              ],
            ),
          )
        ],
        title:
        Text("My Bag", style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            // if (index == Shoe.length) {
            //   return
            //     Column(
            //       children: [
            //         Row(
            //           children: [Padding(
            //             padding: const EdgeInsets.all(30.0),
            //             child: Text("Total",style: TextStyle(color: Colors.grey,fontSize: 25)),
            //           ), SizedBox(width: 190,),Text("761",style:  TextStyle(fontSize: 25,color: Colors.grey),)],
            //         ),
            //         Container(
            //           width: 350,
            //           height: 40,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(15),
            //               color: Colors.black),
            //           child: Center(child: Text("CHECKOUT",style: TextStyle(color: Colors.white),)),
            //         )
            //       ],
            //     );
            //
            //
            //
            //
            //
            // } else {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHK77VZpi9E9KtdNbw_LzCipiY-izc6zycWA&usqp=CAU"),
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            Text(Shoe[index],style: TextStyle(fontWeight: FontWeight.w600)),SizedBox(width: 50,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [SizedBox(width: 50,),Text("price[index]"),SizedBox(width: 180,),Text("x1")],
                        ),

                      ],
                    )
                  ],
                ),
              );


            }
          ,
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 10,
              color: Colors.white,
            );
          },
          itemCount: Shoe.length ),
    );
  }
}
