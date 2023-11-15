import 'package:flutter/material.dart';

class Des7 extends StatefulWidget {
  const Des7({super.key});

  @override
  State<Des7> createState() => _Des7State();
}

class _Des7State extends State<Des7> {
  TextEditingController Name = TextEditingController();
  TextEditingController Place = TextEditingController();
  TextEditingController Phone = TextEditingController();
  TextEditingController Email = TextEditingController();
  String gender = "MALE";
  String quali = "BTECH";
  GlobalKey<FormState> formk = GlobalKey<FormState>();
  bool _termsIsChecked =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){} ,child:Icon(Icons.connected_tv_sharp) ),
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Stack(children: [
            Positioned(
              right: -25,
              bottom: -25,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue[100],
              ),
            ),
            Positioned(
              top: -25,
              left: -30,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue[100],
              ),
            ),
            Positioned(
              top: 130,
              right: -5,
              child: CircleAvatar(
                backgroundColor: Colors.blue[100],
                radius: 270,
              ),
            ),
            Form(
                key: formk,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "       Welcome",
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                        Text(
                          "Back",
                          style: TextStyle(fontSize: 35, color: Colors.blue),
                        )
                      ],
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        controller: Name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please fill";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "NAME", prefixIcon: Icon(Icons.man)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        controller: Place,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please fill";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "PLACE", prefixIcon: Icon(Icons.place)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        controller: Phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please fill";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "PHONE", prefixIcon: Icon(Icons.call)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        controller: Email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please fill";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "EMAIL", prefixIcon: Icon(Icons.mail)),
                      ),
                    ),
                    Text(("GENDER :"),
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RadioMenuButton(
                              value: "MALE",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                              child: Text("MALE")),
                          RadioMenuButton(
                              value: "FEMALE",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                              child: Text("FEMALE")),
                          RadioMenuButton(
                              value: "OTHERS",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                              child: Text("OTHERS")),
                        ],
                      ),
                    ),
                    Text(("EDUCATIONAL QUALIFICATION :"),
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                    Row(
                      children: [
                        RadioMenuButton(
                            value: "BTECH",
                            groupValue: quali,
                            onChanged: (value) {
                              setState(() {
                                quali = value!;
                              });
                            },
                            child: Text("BTECH")),
                        RadioMenuButton(
                            value: "BCA",
                            groupValue: quali,
                            onChanged: (value) {
                              setState(() {
                                quali = value!;
                              });
                            },
                            child: Text("BCA")),
                        RadioMenuButton(
                            value: "BCOM",
                            groupValue: quali,
                            onChanged: (value) {
                              setState(() {
                                quali = value!;
                              });
                            },
                            child: Text("BCOM")),
                        RadioMenuButton(
                            value: "OTHERS",
                            groupValue: quali,
                            onChanged: (value) {
                              setState(() {
                                quali = value!;
                              });
                            },
                            child: Text("OTHERS")),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: CheckboxMenuButton(value: _termsIsChecked, onChanged: (value){
                       setState(() {_termsIsChecked=value!;

                       });
                      }, child: Text("Terms and Condition:"),),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        onPressed: () {
                          if (formk.currentState!.validate()!) {
                            print("NAME IS ${Name.text}");
                            print("Place IS ${Place.text}");
                            print("EMAIL IS ${Email.text}");
                            print("PHON NO IS ${Phone.text}");
                            print("GENDER IS ${gender}");
                            print("QUALIFICATION IS ${quali}");
                          }
                          ;
                        },
                        child: Center(
                            child: Text(
                          "Sign UP",
                          style: TextStyle(fontSize: 15),
                        )),
                      ),
                    ),
                    Text("Forget Password?"),
                    Row(
                      children: [
                        Divider(
                          thickness: 2,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Text(
                      "Sign up with",
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                    )
                  ],
                ))
          ]),
        ));
  }
}
