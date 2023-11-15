import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        leading: Icon(Icons.account_box_sharp),
      ),
      body: Center(
        child: Container(
            height: 300,
            width: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Icon(
                              Icons.account_circle,
                              size: 50,
                            )),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NAME:"),
                      Text("DOB:"),
                      Text("PH NO:"),
                      Text("EMAIL:"),
                      Text("QUALIFICATION:")
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 5))),
      ),
    );
  }
}
