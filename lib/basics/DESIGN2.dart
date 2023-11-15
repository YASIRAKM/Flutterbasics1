import 'package:flutter/material.dart';

class Des1 extends StatefulWidget {
  const Des1({super.key});

  @override
  State<Des1> createState() => _Des1State();
}

class _Des1State extends State<Des1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Center(
                      child: Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Center(child: Text("Login to your account"))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 400,
                        child: TextField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              label: Text("Email"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0))),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 400,
                        child: TextField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              label: Text("Password"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0))),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  child: Center(child: Text("Don't have an account?Sign Up"))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow, border: Border.all(width: 12)),
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
