import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Task11 extends StatefulWidget {
  const Task11({super.key});

  @override
  State<Task11> createState() => _Task11State();
}

class _Task11State extends State<Task11> {
  Future<void> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String temp = pref.getString("textvalue") ?? " ";
    setState(() {
      alwaysshow = temp;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  String alwaysshow = "";
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setString("textvalue", mycontroller.text);
                  setState(() {
                    alwaysshow = mycontroller.text.toString();
                  });
                },
                child: Text("Save")),
            Text(
              alwaysshow,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      )),
    );
  }
}
