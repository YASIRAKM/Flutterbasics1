import 'package:flutter/material.dart';

class Des extends StatefulWidget {
  const Des({super.key});

  @override
  State<Des> createState() => _DesState();
}

class _DesState extends State<Des> {
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
                        child: Text("Sign up", style: TextStyle(fontSize: 30))))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(child: Text("Create an account,It's free")),
              ),
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
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              label: Text("Username"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0))),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        child: TextField(
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                          label: Text("Email"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0))),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        child: TextField(
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0))),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        child: TextField(
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                          label: Text("Confirm Passwor"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0))),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 300,height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  child: Center(child: Text("Already have an account?Login"))),
            )
          ],
        ),
      ),
    );
  }
}
