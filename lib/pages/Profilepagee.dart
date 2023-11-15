import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profi extends StatefulWidget {
  const Profi({super.key});

  @override
  State<Profi> createState() => _ProfiState();
}

class _ProfiState extends State<Profi> {
  String Name = "";
  String Email = "";
  String Phone = "";
  String Dob = "";
  String Gender = "";
  String Intern = "";

  Future<void> getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      Name = pref.getString("name") ?? " ";
      Email = pref.getString("email") ?? " ";
      Phone = pref.getString("phone") ?? " ";
      Dob = pref.getString("dob") ?? " ";
      Gender = pref.getString("gender") ?? " ";
      Intern = pref.getString("internship") ?? " ";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROFILE")),
      body: Stack(
        children: [Positioned(bottom: 500,child: Container(width: 600,height: 400,decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(180) ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                child: Center(child: Text(Name,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600),)),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
              Text("Email:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                child: Center(child: Text(Email,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600))),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
              Text("Phone:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                child: Center(child: Text(Phone,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600))),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
              Text("DOB:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                child: Center(child: Text(Dob,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600))),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
              Text("Gender:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                child: Center(child: Text(Gender,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600))),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
              Text("Intrshp:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Container(
                child: Center(child: Text(Intern,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600))),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
