import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key});

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> {
  bool _islogin=false;
  Future<void> getdata()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      _islogin=pref.getBool("islogin")??false;
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
    return Scaffold(body: SafeArea(
      child: Center(child: Column(
        children: [
          ElevatedButton(onPressed: ()async{
            SharedPreferences pref=await SharedPreferences.getInstance();
            setState(() {
              _islogin=true;


            });
            pref.setBool("islogin", true);
          }, child: Text("LOGIN")),
          _islogin?Text("LOGGED IN"):Text("LOGGED OUT"),
          ElevatedButton(onPressed: ()async{
            SharedPreferences pref=await SharedPreferences.getInstance();
            setState(() {
              _islogin=false;


            });
            pref.setBool("islogin", false);
          }, child: Text("LOG OUT")),
          // _islogin?Text("LOGGED OUT"):Text(""),
        ],
      )),
    ),

    );
  }
}
