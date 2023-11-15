import 'package:flutter/material.dart';

class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  TextEditingController namecntl = TextEditingController();
  TextEditingController dobcntl = TextEditingController();
  TextEditingController agecntl = TextEditingController();
  TextEditingController phonecntl = TextEditingController();
  TextEditingController emailcntl = TextEditingController();
  TextEditingController statuscntl = TextEditingController();
  String gender= "male";
  TextEditingController countrycntl = TextEditingController();
  TextEditingController statecntl = TextEditingController();
  TextEditingController districkcntl = TextEditingController();
  TextEditingController pincntl = TextEditingController();
  GlobalKey<FormState> formsa = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROFILR")),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Form(
              key: formsa,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "name is empty";
                            }
                            return null;
                          },
                          controller: namecntl,
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("NAME"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "dob is empty";
                            }
                            return null;
                          },
                          controller: dobcntl,
                          keyboardType: TextInputType.datetime,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("DOB"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "age is empty";
                            }
                            return null;
                          },
                          controller: agecntl,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("AGE"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "phone no is empty";
                            }
                            return null;
                          },
                          controller: phonecntl,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("PHONE"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "email is empty";
                            }
                            return null;
                          },
                          controller: emailcntl,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("EMAIL"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "status is empty";
                            }
                            return null;
                          },
                          controller: statuscntl,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("STATUS"))),
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 400,
                  //     child: TextFormField(
                  //         validator: (value) {
                  //           if (value!.isEmpty) {
                  //             return "country is empty";
                  //           }
                  //           return null;
                  //         },
                  //         controller: countrycntl,
                  //         style: TextStyle(fontSize: 25),
                  //         decoration: InputDecoration(
                  //             border: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(0)),
                  //             label: Text("COUNTRY"))),
                  //   ),
                  // ),
                  RadioMenuButton(value: "male", groupValue: gender, onChanged: (value){
                    setState(() {
                      gender=value!;
                    });
                  }, child: Text("MALE")),
                  RadioMenuButton(value: "female", groupValue: gender, onChanged: (value){
                    setState(() {
                      gender=value!;
                    });
                  }, child: Text("FEMALE")),
                  RadioMenuButton(value: "other", groupValue: gender, onChanged: (value){
                    setState(() {
                      gender=value!;
                    });
                  }, child: Text("others")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "state is empty";
                            }
                            return null;
                          },
                          controller: statecntl,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("STATE"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "district is empty";
                            }
                            return null;
                          },
                          controller: districkcntl,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("DISTRICT"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "pin is empty";
                            }
                            return null;
                          },
                          controller: pincntl,
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              label: Text("PIN"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Center(
                          child: Text(
                        "OK",
                        style: TextStyle(color: Colors.yellow, fontSize: 20),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formsa.currentState!.validate()) {
                          print("NAME IS ${namecntl.text}");
                          print("DOB IS ${dobcntl.text}");
                          print("AGE  IS ${agecntl.text}");
                          print("PHONE IS ${phonecntl.text}");
                          print("EMAIL IS ${emailcntl.text}");
                          print("STATUS IS ${statuscntl.text}");
                          print("GENDER IS ${gender}");
                          print("COUNTRY IS ${countrycntl.text}");
                          print("STATE IS ${statecntl.text}");
                          print("DISTRICT IS ${districkcntl.text}");
                          print("PIN IS ${pincntl.text}");
                        }
                      },
                      child: Text("PRESS HERE"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
