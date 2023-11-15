import 'package:flutter/material.dart';

class States extends StatefulWidget {
  const States({super.key});

  @override
  State<States> createState() => _StatesState();
}

class _StatesState extends State<States> {
  TextEditingController statcntl = TextEditingController();
  TextEditingController namentl = TextEditingController();
  TextEditingController phonentl = TextEditingController();
  String email = "";
  String phone = "";
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("STATE"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: 200,
                    child: TextField(
                        keyboardType: TextInputType.text,
                        controller: namentl,
                        decoration: InputDecoration(
                            labelText: "name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))))),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: statcntl,
                    decoration: InputDecoration(
                        labelText: "EMAIL",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phonentl,
                    decoration: InputDecoration(
                        labelText: "PHONE NO",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              // ElevatedButton(onPressed: (){
              //   setState(() {
              //    email =statcntl.text;
              //    name=namentl.text;
              //    phone=phonentl.text;
              //   });
              // }, child: Text("PRESS HERE")),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    email = statcntl.text;
                    name = namentl.text;
                    phone = phonentl.text;
                  });
                },
                color: Colors.red[300],
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(border: Border.all(width: 3)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("entered email is $email"),
                    Text("entered name is $name"),
                    Text("entered phone is $phone")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
