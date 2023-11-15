import 'package:flutter/material.dart';

class Passchng extends StatefulWidget {
  const Passchng({super.key});

  @override
  State<Passchng> createState() => _PasschngState();
}

class _PasschngState extends State<Passchng> {
  GlobalKey<FormState> formsake = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: formsake,
      body: Form(
        child: ListView(
          children: [
            TextFormField(decoration: InputDecoration( labelText: "Enter new passwrd"),validator: (value){
              if(value!.isEmpty){
                return "PLEASE FILL";
              }
            },),
            TextFormField(decoration: InputDecoration( labelText: "Confirm passwrd"),validator: (value){
              if(value!.isEmpty){
                return "PLEASE FILL";
              }
            }),


          ],
        ),
      ),
    );
  }
}
