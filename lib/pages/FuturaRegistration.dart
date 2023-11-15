import 'package:flutter1/pages/Profilepagee.dart';
import 'package:flutter1/pages/submittedpage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Fut extends StatefulWidget {
  const Fut({super.key});

  @override
  State<Fut> createState() => _FutState();
}

class _FutState extends State<Fut> {
  GlobalKey<FormState> formk = GlobalKey();
  TextEditingController Name = TextEditingController();
  TextEditingController EMAIL = TextEditingController();
  TextEditingController PHONE = TextEditingController();
  TextEditingController DoB = TextEditingController();
  DateTime? dob;
  String Gender = "male";
  String Course = "FLUTTER";
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple[100],
      appBar: AppBar(
          title: Text("REGISTRATION"), leading: Icon(Icons.app_registration)),
      body: SingleChildScrollView(
        child: Form(
          key: formk,
          child:Stack(
            children: [
              Positioned(top: -150,right:-150,child: CircleAvatar(backgroundColor:Colors.tealAccent[100] ,radius:200,)),
              Positioned(left: -150,top:-150,child: CircleAvatar(backgroundColor:Colors.yellowAccent[100] ,radius: 200,)),
              Positioned(right: -150,top: 400,child: CircleAvatar(backgroundColor:Colors.indigoAccent[100] ,radius: 200,)),
              Positioned(left: -150,top: 400,child: CircleAvatar(backgroundColor:Colors.blueAccent[100] ,radius: 200,)),
              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 80),
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.cyanAccent)),
                      child: TextFormField(
                        controller: Name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "PLEASE FILL";
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "NAME",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 80),
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.cyanAccent)),
                      child: TextFormField(
                        controller: EMAIL,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "PLEASE FILL";
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "EMAIL",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 80),
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.cyanAccent)),
                      child: TextFormField(
                        controller: PHONE,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "PLEASE FILL";
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "PHONE NO",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 80),
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.cyanAccent)),
                      child: TextFormField(
                        controller: DoB,
                        decoration: InputDecoration(
                            labelText: "DATE OF BIRTH",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10)))),
                        validator: (value) {
                          if (value!.isEmpty) {
                           return "PLEASE FILL";
                          }
                        },
                        onTap: () async {
                          dob = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1980),
                              lastDate: DateTime.now());
                          if (dob != null) {
                            setState(() {
                              DoB.text = dob.toString();
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: Text("GENDER:",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,)),
                        ),
                        Row(
                          children: [
                            RadioMenuButton(
                                value: "male",
                                groupValue: Gender,
                                onChanged: (value) {
                                  setState(() {
                                    Gender = value!;
                                  });
                                },
                                child: Text("MALE")),
                            RadioMenuButton(
                                value: "female",
                                groupValue: Gender,
                                onChanged: (value) {
                                  setState(() {
                                    Gender = value!;
                                  });
                                },
                                child: Text("FEMALE")),
                            RadioMenuButton(
                                value: "others",
                                groupValue: Gender,
                                onChanged: (value) {
                                  setState(() {
                                    Gender = value!;
                                  });
                                },
                                child: Text("OTHERS")),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: Text("INTERNSHIP:",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,)),
                        ),
                        Row(children: [
                          RadioMenuButton(
                              value: "flutter",
                              groupValue: Course,
                              onChanged: (value) {
                                setState(() {
                                  Course = value!;
                                });
                              },
                              child: Text("FLUTTER")),
                          RadioMenuButton(
                              value: "mean ",
                              groupValue: Course,
                              onChanged: (value) {
                                setState(() {
                                  Course = value!;
                                });
                              },
                              child: Text("MEAN ")),
                          RadioMenuButton(
                              value: "mern",
                              groupValue: Course,
                              onChanged: (value) {
                                setState(() {
                                  Course = value!;
                                });
                              },
                              child: Text("MERN")),
                        ]),
                        Row(
                          children: [
                            RadioMenuButton(
                                value: "software testing",
                                groupValue: Course,
                                onChanged: (value) {
                                  setState(() {
                                    Course = value!;
                                  });
                                },
                                child: Text("SOFTWARE TESTING")),
                            RadioMenuButton(
                                value: "data science",
                                groupValue: Course,
                                onChanged: (value) {
                                  setState(() {
                                    Course = value!;
                                  });
                                },
                                child: Text("DATA SCIENCE")),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CheckboxMenuButton(
                        value: _check,
                        onChanged: (value) {
                          setState(() {
                            _check = value!;
                          });
                        },
                        child: Text("TERMS & CONDITIONS")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                        onPressed: () async{
                          if (formk.currentState!.validate()) {
                            SharedPreferences pref=await SharedPreferences.getInstance();
                            pref.setString("name", Name.text);
                            pref.setString("email", EMAIL.text);
                            pref.setString("phone", PHONE.text);
                            pref.setString("dob", DoB.text);
                            pref.setString("gender", Gender);
                            pref.setString("internship", Course);



                          }
                        },
                        child: Text("SUBMIT")),

                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Profi()));
                  }, child: Text("View Profile"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
