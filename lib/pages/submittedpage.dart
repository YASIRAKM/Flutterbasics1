import 'package:flutter/material.dart';

class SUb extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String Dob;
  final String gender;
  final String course;
   SUb({super.key, required this.name, required this.email, required this.phone, required this.Dob, required this.gender, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(child: Text(name)),
            Container(child: Text(email)),
            Container(child: Text(phone)),
            Container(child: Text(Dob)),
            Container(child: Text(gender)),
            Container(child: Text(course)),
          ],
        ),
      ),
    );
  }
}
