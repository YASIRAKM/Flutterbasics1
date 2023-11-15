import 'package:flutter1/pages/F_Home.dart';
import 'package:flutter/material.dart';

class Des5 extends StatefulWidget {
  const Des5({super.key});

  @override
  State<Des5> createState() => _Des5State();
}

class _Des5State extends State<Des5> {
  GlobalKey<FormState> formsak = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        body: Stack(children: [
          Stack(children: [
            Positioned(
              right: -20,
              bottom: -15,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue[100],
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(55)),
                ),
              ),
            ),
          ]),
          Stack(children: [
            Positioned(
              top: -15,
              left: -20,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue[100],
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(55)),
                ),
              ),
            ),
          ]),
          Stack(children: [
            Positioned(
              top: 170,
              right: -5,
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  radius: 270,
                  child: Container(
                    height: 300,
                    width: 200,
                    color: Colors.blue[100],
                  ),
                ),
              ),
            ),
          ]),
          Positioned(
            top: 175,
            right: 120,
            child: Stack(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                  ),
                  Text(
                    "Back",
                    style: TextStyle(fontSize: 35, color: Colors.blue),
                  )
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Form(key:  formsak,
              child: Column(
                children: [
                  Positioned(
                    right: 20,
                    top: 290,
                    child: Container(
                        height: 45,
                        width: 335,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(validator:(value) {
                            if (value!.isEmpty) {
                              return "please fill";
                            }
                            return null;
                          },
                              decoration: InputDecoration(labelText: "Email")),
                        )),
                  ),
                  Positioned(
                    right: 20,
                    top: 350,
                    child: Container(
                        height: 45,
                        width: 335,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(validator:(value) {
                            if (value!.isEmpty) {
                              return "please fill";
                            }
                            return null;
                          },
                            decoration: InputDecoration(labelText: "Password"),
                          ),
                        )),
                  ),
                  Positioned(
                      top: 420,
                      right: 5,
                      child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.blue[100])),
                        onPressed: () {if(formsak.currentState!.validate()){
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));}
                          else return null;
                        },
                        child: Container(
                            width: 335,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              "Login",
                              style: TextStyle(fontSize: 15),
                            ))),
                      )),
                ],
              ),
            ),
          ),
          Positioned(top: 490, left: 150, child: Text("Forget Password?")),
          Positioned(
              top: 520,
              left: 200,
              child: Text(
                "Or",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              top: 550,
              left: 170,
              child: Text(
                "Sign up with",
                style: TextStyle(color: Colors.black),
              )),
          Positioned(
            top: 600,
            left: 60,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue),
                    child: Center(
                        child: Text("Google",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      border: Border.all(color: Colors.blue, width: 1)),
                  child: Center(
                      child: Text("Facebook",
                          style: TextStyle(color: Colors.black))),
                )
              ],
            ),
          )
        ])
    );
  }
}


